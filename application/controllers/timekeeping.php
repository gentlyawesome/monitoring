<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Timekeeping extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model(array('M_users','M_captcha'));
		$this->load->helper(array('url','form','my_dropdown'));
		$this->load->library(array('form_validation','login'));		

		#load models
		$this->load->model('M_employees');
		$this->load->model('M_timekeeping');
		$this->load->model('M_timekeeping_file');
		$this->load->model('M_users');
	}

	public function index($page = 0)
	{
		$this->view_data['system_message'] = $this->session->flashdata('system_message');

		//LOAD MODELS
		$this->load->model('M_employees');

		$this->view_data['employee_list'] = $cl = $this->M_employees->employees_for_tk();

		//PAGINATION
		$this->view_data['system_message'] = $this->session->flashdata('system_message');
		
		$filter = false;
		$like = false;
		$order_by = false;
		
		if(!$this->is_admin){
			$filter['timekeeping.empid'] = $this->userlogin;
		}
		
		if($_GET)
		{
			if($this->is_admin)
			{
				if(isset($_GET['empid']) && trim($_GET['empid']) != ''){
					$this->view_data['empid'] = $empid = trim($_GET['empid']);
					$filter['timekeeping.empid'] = $empid;
				}
			}

			if(isset($_GET['date_from']) && trim($_GET['date_from']) != ''){
				$this->view_data['date_from'] = $date_from = trim($_GET['date_from']);
				$filter['DATE(timekeeping.date) >='] = $date_from;
			}
			if(isset($_GET['date_to']) && trim($_GET['date_to']) != ''){
				$this->view_data['date_to'] = $date_to = trim($_GET['date_to']);
				$filter['DATE(timekeeping.date) <='] = $date_to;
			}
		}
		
		//CONFIGURATION
		$get['fields'] = array(
				'timekeeping.*',
				'users.name'
		);
		
		$get['where'] = $filter;
		$get['like'] = $like;
		
		$get['join'] = array(
			
			1 => array(
				"table" => "users",
				"on"	=> "users.login = timekeeping.empid",
				"type"  => "LEFT"
			)
		);
		$get['order'] = "`timekeeping`.`date` DESC,`timekeeping`.`id` ASC";
		$get['all'] = true; //GET ALL EXCLUDE LIMIT
		$get['count'] = true; //RETURN COUNT NOT ROW
		$get['array'] = false; //RETURN OBJECT NOT ARRAY
		$get['single'] = false; //RETURN ALL NOT SINGLE
		
	
		$this->load->library("pagination");
		$config = $this->pagination_style();
		$config["base_url"] = base_url() ."timekeeping/index";
		$suffix = '?'.http_build_query($_GET, '', "&");
		$suffix = str_replace("&submit=Search", "", $suffix);
		$config['suffix'] = $suffix;
		$config['first_url'] = $config['base_url'].$config['suffix']; 
		
		$this->view_data['total_rows'] = $config["total_rows"] = $this->M_employees->get_record("timekeeping", $get);
		$config["per_page"] = 100;
		$config['num_links'] = 10;
		$config["uri_segment"] = 3;
		// $config['use_page_numbers'] = TRUE;
		$this->pagination->initialize($config);
		
		//FOR PAGINATION
		$get['all'] = false;
		$get['count'] = false;
		
		$config['start'] = $page;
		$config['limit'] = $config['per_page'];
		
		$get['start'] = $page;
		$get['limit'] = $config['per_page'];
		
		$get['all'] = false;
		$get['count'] = false;
		$this->view_data['search'] = $search = $this->M_employees->get_record("timekeeping", $get);
		$this->view_data['links'] = $this->pagination->create_links();
		$this->view_data['time_log'] = false;

		// get all record
		$get['all'] = true;
		$all_search = $this->M_employees->get_record("timekeeping", $get);

		if($all_search){
			foreach ($all_search as $key => $value) {
				unset($get);
				$get['where']['timekeeping_id'] = $value->id;
				$get['order'] = 'id';
				$this->view_data['time_log'][$value->id] = $this->M_timekeeping_file->get_record(false, $get);
			}
		}

		#UPDATE TOTAL HOUR AND MINUTE OF EVERY RECORD
			
			if($this->input->get('generate') && $this->input->get('generate') == "Generate Total Hours"){
				
				if($this->is_admin === false){
					$this->_msg('e','Only Admin can access this.',current_url());
				}

				if($all_search){
					foreach ($all_search as $key => $tk) {
						
						if($tk->has_total == 1){ continue; }
						unset($get);
						$get['where']['timekeeping_id'] = $tk->id;
						$get['order'] = 'id';
						
						$time_record = $this->M_timekeeping_file->get_record(false, $get);

						$first_timein = false;
						$last_timeout = false;
						$my_in = false;
						$my_out = false;
						$total_ready = false;
						$count = 0;
						$count2 = 0;
						// vp($time_record);
						if($time_record){
							foreach ($time_record as $tk_file) {

								$count++;
								if($tk_file->logtype == "IN"){

									if(!$my_in){
										$first_timein = $tk_file->time;
										$my_in = true;
									}else{


										if($my_out){

											
											$this->update_total_time($tk->id, $first_timein, $last_timeout);

											#return values to default
											$first_timein = $tk_file->time;
											$last_timeout = false;
											$my_in = true;
											$my_out = false;
											$count2++;
										}
									}
								}else{

									$last_timeout = $tk_file->time;
									$my_out = true;

									#if last record
									if($count === count($time_record)){

										$this->update_total_time($tk->id, $first_timein, $last_timeout);
										$count2++;
										#return values to default
										$first_timein = false;
										$last_timeout = false;
										$my_in = false;
										$my_out = false;
									}
								}
							}

							if($count2>0){
								unset($data);
								$data['has_total'] = 1;
								$rs = $this->M_timekeeping->update($tk->id, $data);
							}
						}
					}

					$this->_msg('s',"Total Hours was successfully generated", current_url());
				}else{
					$this->view_data['system_message'] = "<div class='alert alert-danger'>No record found.</div>";
				}
			}

		#PRINT
			if($this->input->get('print') && $this->input->get('print') == "Print"){
				$this->_print($all_search, $this->view_data['time_log']);
			}
	}

	public function _print($search = false, $time_log = false)
	{
		set_time_limit(0);
		
		$data['search'] = $search;
		$data['time_log'] = $time_log;

		// vd($data);

		if($search)
		{
			$html = $this->load->view('timekeeping/_print',$data,TRUE);
			$this->load->helper('print');
			
			// echo $html;
			$this->load->library('mpdf');
			
			$mpdf=new mPDF('','FOLIO','','',5,5,5,5,0,0); 

			$mpdf->AddPage('P');
			
			$mpdf->WriteHTML($html);

			$filname = "Timekeeping";
			
			$mpdf->Output($filname, "I");
			exit(0);
			
		}else{
			$this->_msg('s','No Record to Print', 'timekeeping');
		}
	}

	public function edit_log($id = false)
	{
		$this->session_checker->secure_page('admin');
		
		if($id === false){ show_404(); }

		$this->view_data['timekeeping_id'] = $id;

		$rs_tkm = $this->M_timekeeping->get($id);
		if($rs_tkm === false){ show_404(); }
		unset($get);
		$get['where']['timekeeping_id'] = $id;
		$get['order'] = 'id';
		$this->view_data['tkm'] = $tkm = $this->M_timekeeping_file->get_record(false, $get);

		if($this->input->post('save')){
			
			$time = $this->input->post('time');
			$logtype = $this->input->post('logtype');
			if($time){
				$ctr = 0;
				foreach ($time as $tkm_file_id => $value) {
					
					unset($data);
					$data['time'] = trim($value);
					$data['logtype'] = trim($logtype[$tkm_file_id]);
					
					$rs = $this->M_timekeeping_file->update($tkm_file_id, $data);
					if($rs){
						$ctr++;
					}
				}

				if($ctr > 0){
					$this->_msg('s','Record was successfully saved.', current_url());
				}else{
					$this->_msg('e','Record was not saved. Please try again.', current_url());
				}
			}
		}
	}

	public function create_log($id = false)
	{
		$this->session_checker->secure_page('admin');
		
		if($id === false){ show_404(); }

		$this->view_data['timekeeping_id'] = $id;

		$rs_tkm = $this->M_timekeeping->get($id);
		if($rs_tkm === false){ show_404(); }
		unset($get);
		$get['where']['timekeeping_id'] = $id;
		$get['order'] = 'id';
		$get['single'] = true;
		$tkm = $this->M_timekeeping_file->get_record(false, $get);
		
		if($tkm){
			unset($data);
			$data['empid'] = $tkm->empid;
			$data['timekeeping_id'] = $tkm->timekeeping_id;
			$data['date'] = $tkm->date;
			$data['logtype'] = "IN";
			$data['time'] = "00:00:00";
			$rs = $this->M_timekeeping_file->insert($data);

			if($rs){
				$this->_msg('s','A new record created, you can now edit the data', 'timekeeping/edit_log/'.$id);
			}
		}
		else
		{
			unset($data);
			$data['empid'] = $rs_tkm->empid;
			$data['timekeeping_id'] = $rs_tkm->id;
			$data['date'] = $rs_tkm->date;
			$data['logtype'] = "IN";
			$data['time'] = "00:00:00";
			$rs = $this->M_timekeeping_file->insert($data);

			if($rs){
				$this->_msg('s','A new record created, you can now edit the data', 'timekeeping/edit_log/'.$id);
			}
		}

		$this->_msg('e','Error Encountered', 'timekeeping/edit_log/'.$id);
	}

	public function create_timekeeping()
	{
		//LOAD MODELS
		$this->load->model('M_employees','M_timekeeping');

		$this->session_checker->secure_page('admin');

		$this->view_data['employee_list'] = $cl = $this->M_employees->employees_for_tk();

		//PAGINATION
		$this->view_data['system_message'] = $this->session->flashdata('system_message');

		if($this->input->post('save')){
			
			$data = $this->input->post('data');
			
			// CHECK IF THE DATA IN THE DATE WAS ALREADY THERE
			unset($get);
			$get['where']['DATE(date)'] = $data['date'];
			$get['where']['empid'] = $data['empid'];
			$rs = $this->M_employees->get_record('timekeeping', $get);

			if($rs){

				$this->_msg('e','Time Log of that Employee at '.$data['date']. ' was already in the record. ', current_url());
			}

			$rs_add = $this->M_timekeeping->insert($data);

			if($rs_add){
				$this->_msg('s','Time record was successfully created, you are now ready to create its time log. ', 'timekeeping/edit_log/'.$rs_add['id']);
			}

		}
	}

	private function update_total_time($id = false, $timein = false, $timeout = false){

		if($id === false) { show_404(); }

		$timekeeping = $this->M_timekeeping->get($id);
		
		if($timekeeping === false) { show_404(); }		

		if($timein === false || $timeout === false){ return; }

		$total_seconds = strtotime($timeout) - strtotime($timein);
		 
	    $minutes = ($total_seconds / 60) % 60; 
	    $hours = round($total_seconds / (60 * 60));

		if($total_seconds > 0){
			unset($data);
			$data['hours'] = $hours + $timekeeping->hours;
			$data['minutes'] = $minutes + $timekeeping->minutes;
			$this->M_timekeeping->update($id, $data);
		}
	}

	public function migrate_timekeeping_table(){

		$tk = $this->M_timekeeping->get_record('timekeeping_old');

		if($tk){
			foreach ($tk as $key => $value) {
				
				unset($data);
				$data['empid'] = $value->empid;
				$data['date'] = $value->date;
				$data['hours'] = $value->hours;
				$data['minutes'] = $value->minutes;
				if($value->hours > 0){
					$data['has_total'] = 1;
				}
				$rs = (object)$this->M_timekeeping->insert($data);

				if($rs->status){
					unset($data);
					$data['empid'] = $value->empid;
					$data['date'] = $value->date;
					$data['timekeeping_id'] = $rs->id;
					$data['logtype'] = "IN";
					$data['time'] = $value->in;
					$this->M_timekeeping_file->insert($data);

					unset($data);
					$data['empid'] = $value->empid;
					$data['date'] = $value->date;
					$data['timekeeping_id'] = $rs->id;
					$data['logtype'] = "OUT";
					$data['time'] = $value->out;
					$this->M_timekeeping_file->insert($data);
				}
			}
		}
	}
}
