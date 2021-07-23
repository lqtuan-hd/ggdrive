<?php 
class Main_model extends CI_Model 
{
        public function getQueue($offset = 0)
        {
                $data = array();
                $data = $this->db->select('images.id,url,images.name,type,id_img_drive,id_folder_drive')->where(array('images.status'=>0))->join('folder','images.id_folder = folder.id','left')->offset($offset)->get('images')->row_array();
                return $data;
        }

}
?>