<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Professor extends CI_Controller {
	
	function __construct() {
		parent::__construct();
		$this->load->model(array('Front_model', 'Front_personal_model'));
	}

	public function index($slug)
	{
		$data['data'] = $this->Front_personal_model->getById();

		if($data['data']['active_'.LANG] != 1)
			redirect($_SERVER['HTTP_REFERER']);

		/* STATIC WORDS TRANSLATIONS */
		$data['translate'] = $this->Front_model->translations();

		/* GOOGLE FORMS */
		$data['google_forms_link'] = $this->Front_model->google_forms_link();

		/* MENU */
		$data['unordered_menu'] = $this->Front_model->menu();

		$data['menu'] = array();

		foreach ($data['unordered_menu'] as $key => $value):
            if ($data['unordered_menu'][$key]['parent'] === '0'):
            	$data['unordered_menu'][$key]['submenu'] = array();
                array_push($data['menu'], $data['unordered_menu'][$key]);
        	endif;
        endforeach;

        foreach ($data['menu'] as $key => $value):
	        foreach ($data['unordered_menu'] as $skey => $svalue):
				if ($data['menu'][$key]['id'] == $data['unordered_menu'][$skey]['parent']):
					array_push($data['menu'][$key]['submenu'], $data['unordered_menu'][$skey]);
				endif;
			endforeach;
		endforeach;

		$data['pubs'] = $this->Front_personal_model->getPubsById();

		foreach($data['pubs'] as $pub => $value):
			foreach(explode(',', $value['lector']) as $i => $lector):
				$data['lectors_by_pubs'] = $this->Front_personal_model->getLectorsByPubsId($lector);
				$data['pubs'][$pub]['lectors'][$i] = $data['lectors_by_pubs'];
			endforeach;

			foreach(explode(',', $data['pubs'][$pub]['facult']) as $i => $facult):
				$data['faculties_by_pubs'] = $this->Front_personal_model->getFacultiesByPubsId($facult);
				$data['pubs'][$pub]['faculties'][$i] = $data['faculties_by_pubs'];
			endforeach;
		endforeach;

		$data['lector_news'] = $this->Front_personal_model->getNewsById();
		foreach ($data['lector_news'] as $key => $value):
			$category = $this->Front_personal_model->read_cat_by_id($value['category']);
			$data['lector_news'][$key]['categories'] = $category;
		endforeach;

		/* POLL */
		$this->load->helper('cookie');
		$data['poll'] = $this->Front_model->getPoll();
		if(isset($data['poll']['id']) && $data['poll']['id'] == get_cookie('poll'))
			$data['poll'] = [];

		$this->load->view('front/professor', $data);
	}

}