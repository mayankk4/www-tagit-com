<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Bands extends CI_Model{

    // select
    // where
    // get table_name

    private $table_name         = 'bands';

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    /////////////////////////////////// B A S I C    C R U D ////////////////////////////////////////

    // Send the data as
    //   $data = array(
    //       'band_id' => $facebook_id,
    //       'is_allocated' => $is_allocated,
    //   );
    // $data['timestamp'] = date('Y-m-d H:i:s');
    function create_band($data){
        if($this->db->insert($this->table_name,$data)){
            $id = $this->db->insert_id();
            return array('id'=>$id);
        }
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'band_id' => $facebook_id,
    //       'is_allocated' => $is_allocated,
    //   );
    // $query = $this->db->get_where('mytable', array('id' => $id), $limit, $offset);
    // multiple result              // if ($query->num_rows() > 0) return $query->result()
    // single   result (limit = 1)  // if ($query->num_rows() == 1) return $query->row();
    function get_band($data, $limit=NULL, $offset=NULL){
        $query = $this->db->get_where($this->table_name, $data, $limit, $offset);

    }


    //   $new_data = array(
    //       'band_id' => $facebook_id,
    //       'is_allocated' => $is_allocated,
    //   );    
    // @return updated user's id
    //$this->db->update('mytable', $data, array('id' => $id));
    function update_band($conditions, $new_data){
        return $this->db->update($this->table_name, $new_data, $conditions);
    }

    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'band_id' => $facebook_id,
    //       'is_allocated' => $is_allocated,
    //   );
    function delete_band($data){
        return $this->db->delete($this->table_name, $data); 
    }


    // Send the data as
    //   $data = array(
    //       'id' => $id, //optional
    //       'band_id' => $facebook_id,
    //       'is_allocated' => $is_allocated,
    //   );
    function check_band_exists($data){
        $query = $this->db->get_where($this->table_name, $data);
        if($query->num_rows() > 0){
            return TRUE;
        }else{
            return FALSE;
        }        
    }


    //////////////////////////////////// T e s t   S u i t e ////////////////////////////////////

    // must return true
    function test_model(){

        //return $this->reduce_invite_code_count_remaining("test1");

        // $this->update_invitee_is_activated("mayaknk@gmail.com"); // working
        // $this->update_invitee_grant_activation("mayaknk@gmail.com", "test1"); // working

        // $data1 = array(
        //     'band_id' => "bxxx1",
        //     'is_allocated' => 0,
        // );
        // $conditions = array(
        //     'band_id' => "bxxx1",
        // );
        // $new_data = array(
        //     'band_id' => "bxxx2",
        // );
        // $data2 = array(
        //     'band_id' => "bxx1",
        // );
        // $data3 = array(
        //     'band_id' => "bxxx1",
        // );
        // $this->create_band($data1);
        // $this->update_band($conditions,$new_data);
        // $this->delete_band($new_data);
        return (
            // $this->check_band_exists($data2) &&
            // !$this->check_band_exists($data3) &&
            1
        );

    } // end test suite

} // end class


/* End of file bands.php */
/* Location: ./application/models/bands.php */