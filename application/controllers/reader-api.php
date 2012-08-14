<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ReaderApi extends CI_Controller {

	function __construct(){

		parent::__construct();

		$this->load->helper('url');
		$this->load->library('tank_auth');

		$this->load->model('bands','BANDS');
		$this->load->model('central_users','CENTRAL_USERS');
		$this->load->model('organizations','ORGANIZATIONS');
		$this->load->model('readers','READERS');
	}


	public function useraction(){

		// TODO: if($_SERVER['REQUEST_METHOD'] == "POST"){
		$reader_id = $_POST['reader_id'];
		$band_id = $_POST['band_id']

		// validate reader_id is valid and allocated and get reader_id [ reader_id band_id ]


		// validate band_id is valid and get band_id [ reader_id band_id ]


		// from reader_id get org_id if exists [ reader_id band_id org_id ]


		// from band_id get user_id [ reader_id band_id org_id user_id ]


		// validate user_org exists using user_id org_id [ reader_id band_id org_id user_id ]


		// from org_id get URL [ reader_id band_id org_id user_id url]


		// store in analytics table


		// call Subdomain API to make FB Post and get details in response (later)


		// call ECHO api -- later


	} // end function index

}

/* End of file admin.php */
/* Location: ./application/controllers/admin.php */