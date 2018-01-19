<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Vacancy_cats extends CI_Controller {

	function __construct() {
		parent::__construct();
		if(!$this->session->userdata('email')) {redirect(base_url('admin/login'));}
		$this->load->model(array('Configs_ad_model', 'Vacancy_cats_ad_model'));
		$this->pageTitle = 'ვაკანსიის კატეგორიები';
	}

	public function index()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['parents'] = $this->Vacancy_cats_ad_model->read_parents();
		$this->load->view('admin/vacancy_cats/manage', $data);
	}

	public function create()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['langs'] = $this->Configs_ad_model->langs();

		$this->load->view('admin/vacancy_cats/create', $data);

		if($this->input->post()) {
			$this->Vacancy_cats_ad_model->create($data['langs']);
			redirect(base_url().'admin/vacancy_cats');
		}
	}

	public function update()
	{
		$data['pageTitle'] = $this->pageTitle;
		$data['langs'] = $this->Configs_ad_model->langs();
		$data['item'] = $this->Vacancy_cats_ad_model->read();

		$this->load->view('admin/vacancy_cats/update', $data);

		if($this->input->post()) {
			$this->Vacancy_cats_ad_model->update_slugs($data['langs']);
			$this->Vacancy_cats_ad_model->update();
			redirect(base_url().'admin/vacancy_cats');
		}
	}

	public function update_sorting()
	{
		$data['vacancy_cats'] = $this->Vacancy_cats_ad_model->update_sorting();
	}

	public function delete()
	{
		$this->Vacancy_cats_ad_model->delete();
		redirect(base_url().'admin/vacancy_cats');
	}

}