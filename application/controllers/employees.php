<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Employees extends MY_Controller {
	
	public function __construct(){
		parent::__construct();
		
		$this->load->model(array(
				'M_enrollments',
				'M_core_model',
				'M_assignsubjects',
				'M_subjects'
				));
		$this->load->helper(array('url_encrypt','my_dropdown'));
		$this->load->model(array('M_employees'));
		$this->load->model(array('M_assignsubjects'));
		$this->load->model(array('M_assign_courses'));
		$this->session_checker->secure_page('admin');
	}
	
	// Create
	public function create()
	{
		$this->load->library(array('form_validation','login'));

		$this->view_data['system_message'] = $this->session->flashdata('system_message');

		#load model 
		$this->load->model('M_employees');
		$this->load->model('M_users');

		if($this->input->post('save_employees')){

			$data = $this->input->post('data');

			foreach ($data as $key => $value) {
				$this->view_data[$key] = $value;
			}

			#check if id already exist
			$exist = $this->M_employees->pull(array('empid'=>$data['empid']));
			if($exist){ 
				$this->view_data['system_message'] = "<div class='alert alert-danger'>Employee Id must be unique.</div>";					
				
			}else{

				#SAVE DATA
				$data['joining_date'] = NOW;
				$rs = (object)$this->M_employees->insert($data);
				if($rs->status){

					unset($users);
					$emp = $this->M_employees->get($rs->id);

					$users['employee_id'] = $emp->id;
					$users['login'] = $emp->empid;
					$users['email'] = $emp->email;
					$users['name'] = $emp->first_name.' '.$emp->middle_name.' '.$emp->last_name;
					$users['is_active'] = 1;
					$this->login->_generate_password($users['login']);
					$users['crypted_password'] = $this->login->get_password();
					$users['salt'] = $this->login->get_salt();

					$rs_u = (object)$this->M_users->insert($users);

					if($rs_u->status){
						$this->_msg('s','Employee was successfully created', current_url());
					}

				}else{
					$this->_msg('e','Data was not saved. Please try again', current_url());
				}
			}
		}
	}
	
	// Retrieve
	public function index($page = 0)
	{
		//PAGINATION
		
		$this->view_data['system_message'] = $this->session->flashdata('system_message');
		// vp($_GET);
		$filter['users.is_active'] = 1;
		$filter['users.admin <>'] = 1;
		$like = false;
		$or_like = false;
		$order_by = false;
		
		$arr_filters = array();
		$suffix = "";
		
		if($_GET)
		{
			if(isset($_GET['name']) && trim($_GET['name']) != ''){
				$this->view_data['name'] = $name = trim($_GET['name']);
				$or_like['employees.last_name'] = $name;
				$or_like['employees.middle_name'] = $name;
				$or_like['employees.first_name'] = $name;
				$arr_filters['name'] = $name;
			}
			
			if(isset($_GET['empid']) && trim($_GET['empid']) != ''){
				$this->view_data['empid'] = $empid = trim($_GET['empid']);
				$like['employees.empid'] = $empid;
				$arr_filters['empid'] = $empid;
				
			}
		}
		
		//CONFIGURATION
		$get['fields'] = array(
				"employees.*",
				"CONCAT(employees.last_name,',',employees.first_name,' ', employees.middle_name) as fullname"
		);
		
		$get['where'] = $filter;
		$get['like'] = $like;
		$get['or_like'] = $or_like;
		
		$get['join'] = array(
			
			1 => array(
				"table" => "users",
				"on"	=> "users.login = employees.empid",
				"type"  => "LEFT"
			)
			
		);
		$get['order'] = "employees.name";
		$get['all'] = true; //GET ALL EXCLUDE LIMIT
		$get['count'] = true; //RETURN COUNT NOT ROW
		$get['array'] = false; //RETURN OBJECT NOT ARRAY
		$get['single'] = false; //RETURN ALL NOT SINGLE
		
	
		$this->load->library("pagination");
		$config = $this->pagination_style();
		$config["base_url"] = base_url() ."employees/index";
		$config['suffix'] = '?'.http_build_query($_GET, '', "&");
		$config['first_url'] = $config['base_url'].$config['suffix']; 
		
		$this->view_data['total_rows'] = $config["total_rows"] = $this->M_core_model->get_record("employees", $get);
		
		$config["per_page"] = 5;
		$config['num_links'] = 10;
		$config["uri_segment"] = 3;
		$this->pagination->initialize($config);
		
		//FOR PAGINATION
		$get['all'] = false;
		$get['count'] = false;
		if($this->input->post('submit') == "Print")
		{
			$get['all'] = true;
		}
		$config['start'] = $page;
		$config['limit'] = $config['per_page'];
		
		$get['start'] = $page;
		$get['limit'] = $config['per_page'];
		
		$this->view_data['search'] = $search = $this->M_core_model->get_record("employees", $get);
		$this->view_data['links'] = $this->pagination->create_links();
	}
	
	
	public function destroy($id = false)
	{
		$this->view_data['employee'] = $emp = $this->M_employees->get($id);
		if($emp === false){ show_404(); }

		$rs = $this->M_employees->delete($id);
		if($rs){
			$this->_msg('s', 'Employee was successfully removed', 'employees');
		}

		$this->_msg('e', 'Employee was not successfully removed', 'employees');
	}
	
	// Update
	public function edit($id)
	{
		$this->view_data['employee'] = $emp = $this->M_employees->get($id);
		if($emp === false){ show_404(); }

		if($this->input->post('save_employees')){

			$data = $this->input->post('data');

			foreach ($data as $key => $value) {
				$this->view_data[$key] = $value;
			}

			$rs = $this->M_employees->update($id, $data);
			if($rs){

				unset($users);
				$users['email'] = $emp->email;
				$users['name'] = $emp->first_name.' '.$emp->middle_name.' '.$emp->last_name;
				$users['is_active'] = 1;

				$rs_u = $this->M_users->update(array('employee_id'=>$id),$users);

				if($rs_u){
					$this->_msg('s','Employee was successfully created', current_url());
				}

			}else{
				$this->_msg('e','Data was not saved. Please try again', current_url());
			}
		}
	}
	
	
}
