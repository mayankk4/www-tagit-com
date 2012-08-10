<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct(){

		parent::__construct();

		$this->load->helper('url');
		$this->load->library('tank_auth');
	}


	public function index(){

		if (!$this->tank_auth->is_logged_in()) {
			redirect('/auth/login/');
		}else{

			$data = array(
				'title' => 'Tagit | Admin',
				'heading' => 'Admin Panel',
				'user_id'	=> $this->tank_auth->get_user_id(),
				'username'	=> $this->tank_auth->get_username()
			);

			$this->load->view('admin/index', $data);
		}
	} // end function index

}

/* End of file admin.php */
/* Location: ./application/controllers/admin.php */