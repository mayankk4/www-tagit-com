<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Central_users extends CI_Model{

    // select
    // where
    // get table_name

    private $table_name         = 'central_users';

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    /////////////////////////////////// B A S I C    C R U D ////////////////////////////////////////

    // Send the data as
    //   $data = array(
    //       'facebook_id' => $facebook_id,
    //   );
    // $data['timestamp'] = date('Y-m-d H:i:s');
    function create_central_user($data){
        if($this->db->insert($this->table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'facebook_id' => $facebook_id, //optional
    //       'timestamp >' => $timestamp, //optional
    //   );
    // $query = $this->db->get_where('mytable', array('id' => $id), $limit, $offset);
    // multiple result              // if ($query->num_rows() > 0) return $query->result()
    // single   result (limit = 1)  // if ($query->num_rows() == 1) return $query->row();
    function get_central_user($data, $limit=NULL, $offset=NULL){
        $query = $this->db->get_where($this->table_name, $data, $limit, $offset);

    }


    // Send the data as
    //   $new_data = array(
    //       'facebook_id' => $facebook_id,
    //   );    
    // @return updated user's id
    //$this->db->update('mytable', $data, array('id' => $id));
    function update_central_user($conditions, $new_data){
        return $this->db->update($this->table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'facebook_id' => $facebook_id, //optional
    //       'timestamp >' => $timestamp, //optional
    //   );
    function delete_central_user($data){
        return $this->db->delete($this->table_name, $data); 
    }


    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'facebook_id' => $facebook_id, //optional
    //       'timestamp >' => $timestamp, //optional
    //   );
    function check_central_user_exists($data){
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


/* End of file central_users.php */
/* Location: ./application/models/central_users.php */