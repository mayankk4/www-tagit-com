<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Test extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('bands','BANDS');
		$this->load->model('central_users','CENTRAL_USERS');
		$this->load->model('organizations','ORGANIZATIONS');
		$this->load->model('readers','READERS');
	}


	public function model($model_name){

		$data = array(
			'title' => 'Tagit | Test',
			'heading' => 'Testing Model ' . $model_name ,
		);

		switch ($model_name) {
		    case "bands":
		    	$data['result'] = $this->BANDS->test_model();

		        break;
		    case "central_users":
		    	$data['result'] = $this->CENTRAL_USERS->test_model();
		        break;
		    case "organizations":
		    	$data['result'] = $this->ORGANIZATIONS->test_model();
		        break;
		    case "readers":
		    	$data['result'] = $this->READERS->test_model();
		        break;
		}		

		$this->load->view('test/index', $data);

	} // end function model

}

/* End of file admin.php */
/* Location: ./application/controllers/admin.php */