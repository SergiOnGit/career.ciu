<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Announces extends CI_Controller {

	function __construct() {
		parent::__construct();
		if(!$this->session->userdata('email')) {redirect(base_url('admin/login'));}
		$this->load->model(array('Configs_ad_model', 'Announces_ad_model'));
		$this->pageTitle = 'ანონსები';
	}

	public function index($start = 0)
	{
		$data['pageTitle'] = $this->pageTitle;
		$this->load->library('pagination');
		// search
		if(isset($_GET['search'])) {
			$search = trim($this->input->get('search'));
		} else {
			$search = '';
		}
		$config['base_url'] = base_url().'admin/announces/index/';
		$config['reuse_query_string'] = TRUE;
		$config['total_rows'] = $this->Announces_ad_model->data_count($search);
		$config['uri_segment'] = 4;
		$config['per_page'] = 10;
		$config['num_links'] = 2;
		$config['full_tag_open'] = '<ul class="pagination">';
		$config['full_tag_close'] = '</ul>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="paginate_button active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['first_link'] = 'პირველი';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_link'] = 'ბოლო';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		$config['next_link'] = 'შემდეგი';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['prev_link'] = 'წინა';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$this->pagination->initialize($config);
		$data['pages'] = $this->pagination->create_links();
		$data['announces'] = $this->Announces_ad_model->read_all($search, 10, $start);
		$this->load->view('admin/announces/manage', $data);
	}

	public function create()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['langs'] = $this->Configs_ad_model->langs();

		$this->load->view('admin/announces/create', $data);

		if($this->input->post()) {
			$insert_id = $this->Announces_ad_model->create($data['langs']);
			$post_slug = $this->Announces_ad_model->getPostSlug($insert_id);
			if($this->input->post('notification') == 1) {
				// onesignal
	            $this->sendNotification($this->input->post(), $post_slug);
			}

			if($_SERVER['SERVER_NAME'] == 'science.ciu.ge') {
				$url = 'http://ciu.ge/subdomains_add/announce';
			} else {
				$url = 'http://ciu.edu.ge/subdomains_add/announce';
			}

			$posted_data = $this->input->post();
			$posted_data['source'] = 'science.ciu.edu.ge';

			$posted_data['active_ge'] = 0;
			$posted_data['active_en'] = 0;
			$posted_data['active_ru'] = 0;

			$data = $posted_data;

			// use key 'http' even if you send the request to https://...
			$options = array(
			    'http' => array(
			        'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
			        'method'  => 'POST',
			        'content' => http_build_query($data)
			    )
			);
			$context  = stream_context_create($options);
			$result = file_get_contents($url, false, $context);
			if ($result === FALSE) { /* error */ }

			redirect(base_url().'admin/announces');
		}
	}

	public function update()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['langs'] = $this->Configs_ad_model->langs();
		$data['item'] = $this->Announces_ad_model->read();

		$this->load->view('admin/announces/update', $data);

		if($this->input->post()) {
			$this->Announces_ad_model->update_slugs($data['langs']);
			$this->Announces_ad_model->update();
			redirect(base_url().'admin/announces');
		}
	}

	public function delete()
	{
		$this->Announces_ad_model->delete();
		redirect(base_url().'admin/announces');
	}

	function sendNotification($data, $post_slug) {
        $heading = array(
            "en" => 'research.ciu.edu.ge'
        );

        $content = array(
            "en" => $data['title_ge']
        );

        $fields = array(
            'app_id' => "7ab1e012-32ca-42fa-a296-28c7c35ece97",
            'included_segments' => array('All'),
            'url' => base_url().'announcements/index/'.$post_slug['slug_ge'],
            'headings' => $heading,
            'contents' => $content
        );

        $fields = json_encode($fields);

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        curl_setopt($ch, CURLOPT_HTTPHEADER,
        				 array('Content-Type: application/json; charset=utf-8',
        				 	   'Authorization: Basic YmIwZTkyOTAtZjA1Ni00N2M3LWJiMzctZjQ1YjdmMzk5Njgy'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

        $response = curl_exec($ch);
        curl_close($ch);
        
        return $response;
	}

}