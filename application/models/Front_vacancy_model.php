<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Front_vacancy_model extends CI_Model {

	public function filter() {
		$this->db->select('slug_'.$this->input->post('lang').', title_'.$this->input->post('lang').', category, date, image');
		$this->db->from('vacancy');
		$this->db->where('active_'.$this->input->post('lang'), 1);
		if(!empty($this->input->post('vacancySearchFilter'))):
			$this->db->like('title_'.$this->input->post('lang'), $this->input->post('vacancySearchFilter'));
		endif;
		if(!empty($this->input->post('vacancyFilterCat')) || !empty($this->input->post('vacancyFilterCatGet'))):
			$vacancyFilterCat = $this->input->post('vacancyFilterCat') ? $this->input->post('vacancyFilterCat') : $this->input->post('vacancyFilterCatGet');
			$this->db->like('category', $vacancyFilterCat, 'both');
		endif;
		if(!empty($this->input->post('vacancyDatepicker'))):
			$this->db->like('date', $this->input->post('vacancyDatepicker'));
		endif;
		$this->db->order_by('date', 'DESC');
		$this->db->limit(15, $this->input->post('vacancyOffset'));
		$query = $this->db->get();
		return $query->result_array();
	}

	public function home_vacancy($limit = null) {
		$this->db->select('*');
		$this->db->from('vacancy');
		$this->db->order_by('date', 'DESC');
		$this->db->where('active_'.LANG, 1);
		$this->db->limit($limit);
		$query = $this->db->get();
		return $query->result_array();
	}

	public function vacancy_categories() {
		$this->db->select('id, title_'.LANG);
		$this->db->from('vacancy_cats');
		$this->db->where('active_'.LANG, 1);
		$query = $this->db->get();
		return $query->result_array();
	}

	public function read_cat_by_id($ids) {
		if($this->input->post('lang')) {
			$language = $this->input->post('lang');
		} else {
			$language = LANG;
		}
		$this->db->select('id, color, title_'.$language.', active_'.$language);
		$this->db->from('vacancy_cats');
		$ids = explode(',', $ids);
		foreach($ids as $id):
			$this->db->or_where('id', $id);
		endforeach;
		$query = $this->db->get();
		return $query->result_array();
	}

	public function getBySlug($slug){
		$this->db->select('*');
		$this->db->from('vacancy');
		$this->db->where('slug_ge',$slug);
		$this->db->or_where('slug_en',$slug);
		$this->db->or_where('slug_ru',$slug);
		$query = $this->db->get();
		$data = $query->row_array();

		if(!empty($data['category'])){
			$data['category'] = $this->getCategoriesWhereIn($data['category']);
		}
		if($data['image_paths'] != '')
			$data['image_paths'] = explode(',', $data['image_paths']);

		return $data;
	}

	public function getCategoriesWhereIn($categories)
	{
			$this->db->select('*');
			$this->db->from('vacancy_cats');
			$this->db->where_in('id', explode(',', $categories));
			$query = $this->db->get();
			return $query->result_array();
	}

}