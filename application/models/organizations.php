<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Organizations extends CI_Model{

    // select
    // where
    // get table_name

    private $table_name         = 'organizations';

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    /////////////////////////////////// B A S I C    C R U D ////////////////////////////////////////

    // Send the data as
    //   $data = array(
    //       'name' => $facebook_id,
    //       'email' => $facebook_id,
    //       'fb_app_id' => $facebook_id,
    //       'subdomain_url' => $facebook_id,
    //   );
    // $data['timestamp'] = date('Y-m-d H:i:s');
    function create_organization($data){
        if($this->db->insert($this->table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'name' => $facebook_id,
    //       'email' => $facebook_id,
    //       'fb_app_id' => $facebook_id,
    //       'subdomain_url' => $facebook_id,
    //   );
    // $query = $this->db->get_where('mytable', array('id' => $id), $limit, $offset);
    // multiple result              // if ($query->num_rows() > 0) return $query->result()
    // single   result (limit = 1)  // if ($query->num_rows() == 1) return $query->row();
    function get_organization($data, $limit=NULL, $offset=NULL){
        $query = $this->db->get_where($this->table_name, $data, $limit, $offset);

    }


    //   $new_data = array(
    //       'id' => $id, //optional
    //       'name' => $facebook_id,
    //       'email' => $facebook_id,
    //       'fb_app_id' => $facebook_id,
    //       'subdomain_url' => $facebook_id,
    //   );    
    // @return updated user's id
    //$this->db->update('mytable', $data, array('id' => $id));
    function update_organization($conditions, $new_data){
        return $this->db->update($this->table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'name' => $facebook_id,
    //       'email' => $facebook_id,
    //       'fb_app_id' => $facebook_id,
    //       'subdomain_url' => $facebook_id,
    //   );
    function delete_organization($data){
        return $this->db->delete($this->table_name, $data); 
    }


    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'name' => $facebook_id,
    //       'email' => $facebook_id,
    //       'fb_app_id' => $facebook_id,
    //       'subdomain_url' => $facebook_id,
    //   );
    function check_organization_exists($data){
        $query = $this->db->get_where($this->table_name, $data);
        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }        
    }


    //////////////////////////////////// T e s t   S u i t e ////////////////////////////////////

    // must return true
    function test_model(){
        return true;
    }

}


/* End of file organizations.php */
/* Location: ./application/models/organizations.php */