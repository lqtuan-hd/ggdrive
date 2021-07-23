<?php (defined('BASEPATH')) OR exit('No direct script access allowed');
class MY_Controller extends CI_Controller{
	public $template  =  'template/main';
	public $userId;
	public $userName;
	public $data = array();
	public function __construct()
	{
		parent::__construct();
		$this->check_session();
 	}
	public function view($view)
	{
			$this->data['view'] = $view;
			$this->load->view('template/main',$this->data);	
	}
	public function check_session()
	{
		if(!isset($_SESSION['userId'])){
			$this->unauthorized();
		}
		$this->userId = $_SESSION['userId'];
		$this->userName = $_SESSION['userName'];
	}
	
	public function unauthorized()
	{
		header('HTTP/1.1 401 Unauthorized', true, 401);
		echo'<script>';
			echo'location.href="'.base_url().'login"';
		echo'</script>';
		die;		
	}
	
}
