<?php
class Publications_model extends CI_Model {
	
    public function __construct()	{
        $this->load->database(); 
    }

    public function get_publications() {
        $this->db->order_by('date','DESC');
        $query = $this->db->get('publications');
        return $query->result_array();
    }

}
?>
