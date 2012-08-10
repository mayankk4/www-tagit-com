<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index()
	{	
		$data = array(
			'title' => 'Tagit | Register',
			'heading' => 'Registration'
		);
		$this->load->view('register/index', $data);
	}

	public function users()
	{	
		$data = array(
			'title' => 'Tagit | Register',
			'heading' => 'Register as a User'
		);
		$this->load->view('register/user', $data);
	}

	public function organization()
	{	
		$data = array(
			'title' => 'Tagit | Register',
			'heading' => 'Register as Organization'
		);
		$this->load->view('register/organization', $data);
	}


}

/* End of file register.php */
/* Location: ./application/controllers/register.php */