<?php defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

	function __construct() {
		parent::__construct();
		if(!$this->session->userdata('email')) {redirect(base_url('admin/login'));}
		$this->load->model(array('Configs_ad_model', 'News_ad_model', 'Subscribers_ad_model'));
		$this->pageTitle = 'სიახლეები';
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
		$config['base_url'] = base_url().'admin/news/index/';
		$config['reuse_query_string'] = TRUE;
		$config['total_rows'] = $this->News_ad_model->data_count($search);
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
		$data['news'] = $this->News_ad_model->read_all($search, 10, $start);

		$this->load->view('admin/news/manage', $data);
	}

	public function create()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['langs'] = $this->Configs_ad_model->langs();
		$data['cats'] = $this->News_ad_model->read_cats();
		$data['lectors'] = $this->News_ad_model->read_lectors();

		$this->load->view('admin/news/create', $data);

		if($this->input->post()) {
			$insert_id = $this->News_ad_model->create($data['langs']);
			$post_slug = $this->News_ad_model->getPostSlug($insert_id);
			if($this->input->post('notification') == 1) {
				// onesignal
				$this->sendNotification($this->input->post(), $post_slug);
			}
			
			if($this->input->post('send_newsletter') == 1) {
				// send emails
				$data['all_subscribers'] = $this->Subscribers_ad_model->read_all_nolimit();
				$this->load->library('email');
				$config = array(
				   	'protocol' => 'smtp',
				    'smtp_host' => $this->config->item('smtp_host'),
				    'smtp_port' => $this->config->item('smtp_port'),
					'smtp_crypto' => $this->config->item('smtp_crypto'),
				    'smtp_user' => $this->config->item('smtp_user'),
				    'smtp_pass' => $this->config->item('smtp_pass'),
				    'mailtype'  => 'html',
				    'charset'   => 'utf-8'
				);
				$this->email->initialize($config);
				
				foreach ($data['all_subscribers'] as $row) {
					if($this->in_array_any($this->input->post('category'), explode(',', $row['category']))) {
						$this->email->clear();

						$this->email->to($row['email']);
						$this->email->from($this->config->item('smtp_user'));
						$this->email->subject("სიახლე");
						$this->email->set_newline("\r\n");
						$this->email->message(
							'<h1>'.$this->input->post('title_ge').'</h1><p>'.$this->input->post('descr_ge').'</p>'.
							"<p>
		                        <a href='".site_url('news/index/'.$post_slug['slug_ge'])."'>
		                            <u>სრულად ნახვა</u>
		                        </a>
		                    </p>
			                <div style='margin-top: 20px;'>
			                    <p>აღარ გსურთ ჩვენგან შეტყობინებების მიღება?
			                        <a href='".site_url('unsubscribe/'.$row['email_hash'])."'>
			                            <u>გამოწერის გაუქმება</u>
			                        </a>
			                    </p>
			                </div>"
						);
						$this->email->send();
					}
				}
			}

			if($_SERVER['SERVER_NAME'] == 'career.ciu.ge') {
				$url = 'http://ciu.ge/subdomains_add/news';
				$domain = 'http://career.ciu.ge';
			} else {
				$url = 'https://ciu.edu.ge/subdomains_add/news';
				$domain = 'http://career.ciu.edu.ge';
			}

			$posted_data = $this->input->post();
			$posted_data['category'] = '';
			$posted_data['source'] = 'career.ciu.edu.ge';
			$posted_data['image'] = $domain.$posted_data['image'];

			$image_new_paths = array();
			$image_paths = explode(',', $posted_data['image_paths']);
			foreach($image_paths as $path):
				$path = $domain.$path;
				array_push($image_new_paths, $path);
			endforeach;

			$posted_data['image_paths'] = implode(',', $image_new_paths);

			$posted_data['active_ge'] = 0;
			$posted_data['active_en'] = 0;
			$posted_data['active_ru'] = 0;

			$cat_names = $this->News_ad_model->read_cat_by_id(implode(',', $this->input->post('category')));

			$new_cat_names = array();

			foreach($cat_names as $cat_name):
				array_push($new_cat_names, $cat_name['title_ge']);
			endforeach;

			$cat_names = implode(',', $new_cat_names);

			$posted_data['source_cat'] = $cat_names;

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

			redirect(base_url().'admin/news');
		}
	}

	public function update()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['langs'] = $this->Configs_ad_model->langs();
		$data['cats'] = $this->News_ad_model->read_cats();
		$data['lectors'] = $this->News_ad_model->read_lectors();
		$data['item'] = $this->News_ad_model->read();

		$this->load->view('admin/news/update', $data);

		if($this->input->post()) {
			$this->News_ad_model->update_slugs($data['langs']);
			$this->News_ad_model->update();
			redirect(base_url().'admin/news');
		}
	}

	public function delete()
	{
		$this->News_ad_model->delete();
		redirect(base_url().'admin/news');
	}

	function in_array_any($needles, $haystack) {
	   	return (bool)array_intersect($needles, $haystack);
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
            'url' => base_url().'news/index/'.$post_slug['slug_ge'],
            'chrome_web_icon' => base_url().ltrim($data['image'], '/'),
            'firefox_icon' => base_url().ltrim($data['image'], '/'),
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