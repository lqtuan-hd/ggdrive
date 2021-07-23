<?php (defined('BASEPATH')) OR exit('No direct script access allowed');
class Api extends CI_Controller {
	public function __construct() {
		parent::__construct();

	}
	public function insert()
	{
		$data = array(
			'data' => file_get_contents('data.json'),
			'created' => time(),
			'status' => 0
		);
		$this->db->insert('data',$data);
		echo json_encode(array("code"=>200,"message"=>"success"));
	}
	public function update()
	{
		echo json_encode(array("code"=>200,"message"=>"success"));
	}
	public function delete()
	{
		echo json_encode(array("code"=>200,"message"=>"success"));
	}
	

}?>
