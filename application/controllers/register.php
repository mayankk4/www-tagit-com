<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index()
	{	
		$data = array(
			'title' => 'Tagit | Register',
			'heading' => 'Registrater as Organization'
		);
		$this->load->view('register/index', $data);
	}

}

/* End of file register.php */
/* Location: ./application/controllers/register.php */