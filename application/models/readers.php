<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Readers extends CI_Model{

    // select
    // where
    // get table_name

    private $table_name         = 'readers';

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    /////////////////////////////////// B A S I C    C R U D ////////////////////////////////////////

    // Send the data as
    //   $data = array(
    //       'reader_id' => $reader_id,
    //       'is_allocated' => $is_allocated,
    //   );
    function create_reader($data){
        if($this->db->insert($this->table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'reader_id' => $reader_id,
    //       'is_allocated' => $is_allocated,
    //   );
    // $query = $this->db->get_where('mytable', array('id' => $id), $limit, $offset);
    // multiple result              // if ($query->num_rows() > 0) return $query->result()
    // single   result (limit = 1)  // if ($query->num_rows() == 1) return $query->row();
    function get_reader($data, $limit=NULL, $offset=NULL){
        $query = $this->db->get_where($this->table_name, $data, $limit, $offset);

    }


    
    // @return updated user's id
    //$this->db->update('mytable', $data, array('id' => $id));
    function update_reader($conditions, $new_data){
        return $this->db->update($this->table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'reader_id' => $reader_id,
    //       'is_allocated' => $is_allocated,
    //   );
    function delete_reader($data){
        return $this->db->delete($this->table_name, $data); 
    }


    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'reader_id' => $reader_id,
    //       'is_allocated' => $is_allocated,
    //   );
    function check_reader_exists($data){
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


/* End of file readers.php */
/* Location: ./application/models/readers.php */