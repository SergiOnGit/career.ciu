<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Photo_gallery_ad_model extends CI_Model {

	public function read_all($search, $num, $start) {
		$this->db->select('id, title_ge, image');
		$this->db->from('photo_gallery');
		$this->db->like('title_ge', $search);
		$this->db->order_by('id', 'desc');
		$this->db->limit($num, $start);
		$query = $this->db->get();
		return $query->result_array();
	}

	public function data_count($search) {
		$this->db->from('photo_gallery');
		$this->db->like('title_ge', $search);
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function read() {
		$id = $this->uri->segment(4);

		$this->db->select('*');
		$this->db->from('photo_gallery');
		$this->db->where('id', $id);
		$query = $this->db->get();
		return $query->row_array();
	}

	public function create($langs) {
		$slug_ge = url_title($this->input->post('title_ge'), 'dash');
		$slug_en = url_title($this->input->post('title_en'), 'dash');
		$slug_ru = url_title($this->input->post('title_ru'), 'dash');

		foreach ($langs as $lang) {
			$unique = true;
        	$i = 1;
        	while ($unique) {
            	$this->db->select('slug_'.$lang['code']);
	            $this->db->from('photo_gallery');
	            $this->db->where('slug_'.$lang['code'], ${'slug_'.$lang['code']});
	            $query = $this->db->get();
	            if($query->num_rows() == 0) {
	                $unique = false;
	            } else {
	                ${'slug_'.$lang['code']} = ${'slug_'.$lang['code']}.'-'.$i;
	            }
	            $i++;
	        }
        }

		if(strlen($this->input->post('date')) > 0) {
			$date = $this->input->post('date');
		} else {
			$date = date('Y-m-d');
		}

		$this->db->insert('photo_gallery',
			array(
				'slug_ge' => $slug_ge,
				'slug_en' => $slug_en,
				'slug_ru' => $slug_ru,

				'title_ge' => $this->input->post('title_ge'),
				'title_en' => $this->input->post('title_en'),
				'title_ru' => $this->input->post('title_ru'),

				'descr_ge' => $this->input->post('descr_ge'),
				'descr_en' => $this->input->post('descr_en'),
				'descr_ru' => $this->input->post('descr_ru'),

				'active_ge' => $this->input->post('active_ge'),
				'active_en' => $this->input->post('active_en'),
				'active_ru' => $this->input->post('active_ru'),

				'image' => $this->input->post('image'),
				'image_paths' => $this->input->post('image_paths')
			)
		);
		return $this->db->insert_id();
	}

	public function update_slugs($langs) {
		$old_slugs = $this->read();
		$old_slug_ge = $old_slugs['slug_ge'];
		$old_slug_en = $old_slugs['slug_en'];
		$old_slug_ru = $old_slugs['slug_ru'];

		$slug_ge = url_title($this->input->post('title_ge'), 'dash');
		$slug_en = url_title($this->input->post('title_en'), 'dash');
		$slug_ru = url_title($this->input->post('title_ru'), 'dash');

		foreach ($langs as $lang) {
			$unique = true;
        	$i = 1;
        	while ($unique) {
        		if(${'old_slug_'.$lang['code']} != ${'slug_'.$lang['code']}) {
	            	$this->db->select('slug_'.$lang['code']);
		            $this->db->from('photo_gallery');
		            $this->db->where('slug_'.$lang['code'], ${'slug_'.$lang['code']});
		            $query = $this->db->get();
		            if($query->num_rows() == 0) {
		                $unique = false;
		            } else {
		                ${'slug_'.$lang['code']} = ${'slug_'.$lang['code']}.'-'.$i;
		            }
		        } else {
		        	$unique = false;
		        }
	            $i++;
	        }
        }

		$id = $this->uri->segment(4);
		$this->db->where(array('id' => $id));
        $this->db->update('photo_gallery',
			array(
				'slug_ge' => $slug_ge,
				'slug_en' => $slug_en,
				'slug_ru' => $slug_ru
			)
		);
	}

	public function update() {
		$id = $this->uri->segment(4);
		if(strlen($this->input->post('date')) > 0) {
			$date = $this->input->post('date');
		} else {
			$date = date('Y-m-d');
		}

        $this->db->where(array('id' => $id));
		$this->db->update('photo_gallery',
			array(
				'title_ge' => $this->input->post('title_ge'),
				'title_en' => $this->input->post('title_en'),
				'title_ru' => $this->input->post('title_ru'),

				'descr_ge' => $this->input->post('descr_ge'),
				'descr_en' => $this->input->post('descr_en'),
				'descr_ru' => $this->input->post('descr_ru'),

				'active_ge' => $this->input->post('active_ge'),
				'active_en' => $this->input->post('active_en'),
				'active_ru' => $this->input->post('active_ru'),

				'image' => $this->input->post('image'),
				'image_paths' => $this->input->post('image_paths')
			)
		);
	}

	public function delete() {
		$id = $this->uri->segment(4);

		$this->db->where('id', $id);
		$this->db->delete('photo_gallery');
	}

}