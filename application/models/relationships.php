<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Readers extends CI_Model{

    // select
    // where
    // get table_name

    private $user_band_table_name                   = 'user_band';
    private $organization_reader_table_name         = 'organization_reader';
    private $organization_user_table_name           = 'organization_user';

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    ////////////////////////////// U S E R  -  B A N D  ////////////////////////////////////////

    // Send the data as
    //   $data = array(
    //       'user_id' => $reader_id,
    //       'band_id' => $is_allocated,
    //   );
    function create_user_band_relationship($data){
        if($this->db->insert($this->user_band_table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'user_id' => $reader_id, // opional
    //       'band_id' => $is_allocated, // opional
    //   );
    function get_user_band_relationship($data, $limit, $offset){
        $query = $this->db->get_where($this->user_band_table_name, $data, $limit, $offset);
    }

    // @return updated id
    //$this->db->update('mytable', $data, array('id' => $id));
    //   $conditions = array(
    //       'user_id' => $reader_id, // opional
    //       'band_id' => $is_allocated, // opional
    //   );
    //   $new_data = array(
    //       'user_id' => $reader_id, // opional
    //       'band_id' => $is_allocated, // opional
    //   );
    function update_user_band_relationship($conditions, $new_data){
        return $this->db->update($this->user_band_table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'user_id' => $reader_id, // opional
    //       'band_id' => $is_allocated, // opional
    //   );
    function delete_user_band_relationship($data){
        return $this->db->delete($this->user_band_table_name, $data); 
    }

    // Send the data as
    //   $data = array(
    //       'user_id' => $reader_id, // opional
    //       'band_id' => $is_allocated, // opional
    //   );
    function check_user_band_relationship_exists($data){
        $query = $this->db->get_where($this->user_band_table_name, $data);
        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }        
    }

    ////////////////////////////// O R G A N I Z A T I O N   -  U S E R  ///////////////////////

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id,
    //       'user_id' => $user_id,
    //   );
    function create_organization_user_relationship($data){
        if($this->db->insert($this->organization_user_table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id, // optional
    //       'user_id' => $user_id, // optional
    //   );
    function get_organization_user_relationship($data, $limit, $offset){
        $query = $this->db->get_where($this->organization_user_table_name, $data, $limit, $offset);
    }

    // @return updated id
    //$this->db->update('mytable', $data, array('id' => $id));
    //   $conditions = array(
    //       'organization_id' => $organization_id, // optional
    //       'user_id' => $user_id, // optional
    //   );
    //   $new_data = array(
    //       'organization_id' => $organization_id, // optional
    //       'user_id' => $user_id, // optional
    //   );
    function update_organization_user_relationship($conditions, $new_data){
        return $this->db->update($this->organization_user_table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id, // optional
    //       'user_id' => $user_id, // optional
    //   );
    function delete_organization_user_relationship($data){
        return $this->db->delete($this->organization_user_table_name, $data); 
    }

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id, // optional
    //       'user_id' => $user_id, // optional
    //   );
    function check_organization_user_relationship_exists($data){
        $query = $this->db->get_where($this->organization_user_table_name, $data);
        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }        
    }

    ////////////////////////////// O R G A N I Z A T I O N   -  R E A D E R  ///////////////////

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id,
    //       'reader_id' => $reader_id,
    //   );
    function create_organization_reader_relationship($data){
        if($this->db->insert($this->organization_reader_table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id, // optional
    //       'reader_id' => $reader_id, // optional
    //   );
    function get_organization_reader_relationship($data, $limit, $offset){
        $query = $this->db->get_where($this->organization_reader_table_name, $data, $limit, $offset);
    }

    // @return updated id
    //$this->db->update('mytable', $data, array('id' => $id));
    //   $conditions = array(
    //       'organization_id' => $organization_id, // optional
    //       'reader_id' => $reader_id, // optional
    //   );
    //   $new_data = array(
    //       'organization_id' => $organization_id, // optional
    //       'reader_id' => $reader_id, // optional
    //   );
    function update_organization_reader_relationship($conditions, $new_data){
        return $this->db->update($this->organization_reader_table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id, // optional
    //       'reader_id' => $reader_id, // optional
    //   );
    function delete_organization_reader_relationship($data){
        return $this->db->delete($this->organization_reader_table_name, $data); 
    }

    // Send the data as
    //   $data = array(
    //       'organization_id' => $organization_id, // optional
    //       'reader_id' => $reader_id, // optional
    //   );
    function check_organization_reader_relationship_exists($data){
        $query = $this->db->get_where($this->organization_reader_table_name, $data);
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