<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * General_util
 *
 * @author		Mayank Kandpal
 * @version		1.0
 */

class General_util{

	function __construct(){
		$this->ci =& get_instance();
        // $this->ci->load->library('email');
	}


//////////////////////////////////// U T I L S ////////////////////////////////////

    function validateEmail($email){
        return preg_match("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/", $email);
    }


} // end class