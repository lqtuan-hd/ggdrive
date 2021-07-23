<?php (defined('BASEPATH')) OR exit('No direct script access allowed');
class Crontab extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library("Curl");
		$this->load->model('GoogleDrive_Model','drive');
		define('PARENT_SUB', '1OhkUUm9n-QokWXPpz5g5wp2L1jwHfvcc');

	}
	public function index()
	{
		
		// $headers = array("Authorization: Basic MjRwaWt2ZnRjQnRKQm42akFwckxjaDFzMzJzYUtXSkE6VEROYTk2dDFrWE5WNjRHUWlMZUJWT0tFaEkwTmhZSXM=");
		// $url = "https://pro.teeallover.com/api/tee-folder/v1/get/";
		// $data = $this->curl->call($url,"",$headers);
		$queue = $this->db->where(array('status'=>0))->get('data')->row_array();
		
		if(!$queue)
			exit;
	
		$data = json_decode($queue['data'],true);
	
		try
		{
			//$this->db->trans_start();

			$id_sender = isset($data['main']['id']) ? $data['main']['id'] : "";
			if(!$id_sender)
				throw new Exception("Request Loi");
					
			$check = $this->db->where(array('id_sender'=>$id_sender))->get('folder')->row_array();
				
			if($check)
				$this->update($data,$check);
			else
				$this->insert($data);

			$this->db->where(array('id'=>$queue['id']))->set(array('status'=>1))->update('data');
			//$this->db->trans_complete();

		}catch(Exception $e)
		{
			echo $e->getMessage();die;
			$this->db->where(array("id"=>$queue['id']))->set(array('status'=>4))->update('data');
			$arr = array("id_queue"=>$queue['id'],"message"=>$e->getMessage(),"time"=>time());
			$this->db->insert("logs",$arr);	
		}

	}
	public function insert($row)
	{

		$client = $this->getClient();
		$service = new Google_Service_Drive($client);

		
		$g_parent =  explode("_",$row["target"]);

			// Check Xem Đã tạo folder sup chưa
		$sup = $this->db->where(array("name"=>$g_parent[1],'id_parent'=>1))->get('folder')->row_array();

		if(!$sup)
		{
			
			$sup  = $this->createFolder($service,$g_parent[1],PARENT_SUB,1,$row['target'],time());
				
		}

		$insertImg = array();
		$original = isset($row['data']['original']) ? $row['data']['original'] : array();
		$idThisFolder = $row['main']['id'];
		$thisFolderName = $row['main']['name'];
		$thisUpdatedAt = strtotime($row['main']['updated_at']);

		$thisFolder = $this->createFolder($service,$thisFolderName,$sup['id_folder_drive'],$sup['id'],$idThisFolder,$thisUpdatedAt,$row);
	
		foreach($original as $r )
		{
			$this->drive->create($service,$r['file_url'],$r['file_name'],$thisFolder['id_folder_drive'],$row['main']['updated_at']);
			$f = array(
					'file_id'=>$r['file_id'],
					'url' => $r['file_url'],
					'name' => $r['file_name'],
					'id_folder' => $thisFolder['id'],
					'id_img_drive' => '',
					'create' => time(),
					'last_change' => 0,
					'status' => 1,
					'push' => 1
			);
			$this->db->insert('images',$f);
		}
		
		foreach($row['data']['extra'] as $key => $r)
		{
			if(is_numeric($key))
					continue;
			foreach($r as $r2)
			{
				$this->drive->create($service,$r2['file_url'],$r2['file_name'],$thisFolder['id_folder_drive'],$row['main']['updated_at']);
					$f = 
					array(
					'file_id'=>$r2['file_id'],
					'url' => $r2['file_url'],
					'name' => $r2['file_name'],
					'id_folder' => $thisFolder['id'],
					'id_img_drive' => '',
					'create' => time(),
					'last_change' => 0,
					'status' => 1,
					'push' => 0
					);
					$this->db->insert('images',$f);
			}
		}
		
			


		if($row['cmz'])
		{
			
			$cmzName = $row['main']['name'].'-CMZ';
			$cmzFolder = $this->createFolder($service,$cmzName,$thisFolder['id_folder_drive'],$thisFolder['id'],$idThisFolder,$thisUpdatedAt,"",1);

			$thisCmzName = $row['cmz']['number'];
			$idThisCmzFolder = $row['cmz']['id'];
			$thisCmzUpdatedAt = strtotime($row['cmz']['updated_at']);
			$thisCmzFolder = $this->createFolder($service,$thisCmzName,$cmzFolder['id_folder_drive'],$cmzFolder['id'],$idThisCmzFolder,$thisCmzUpdatedAt);
			foreach($row['data']['cmz'] as $r)
			{
				$this->drive->create($service,$r['file_url'],$r['file_name'],$thisCmzFolder['id_folder_drive'],$row['main']['updated_at']);
				$f = 
				array(
					'file_id'=>$r['file_id'],
					'url' => $r['file_url'],
					'name' => $r['file_name'],
					'id_folder' => $thisCmzFolder['id'],
					'id_img_drive' => '',
					'create' => time(),
					'last_change' => 0,
					'status' => 1,
					'push' => 0
					);
				$this->db->insert('images',$f);
			}
		}
		
		
	}
	public function update($new,$check)
	{

		
		$raw_data = $this->db->where(array('id_folder'=>$check['id']))->order_by('id','desc')->get('folder_data')->row_array();

		if(!$raw_data)
			throw new Exception("Thiếu tham số");

		$old = json_decode($raw_data['data'],true);

		$this->compare_array($old['data'],$new['data']);
		
	}
	public function extraData($old,$new)
	{

	}
	public function fileL($data)
	{
		$dataroot = array();
		foreach($data['data']['original'] as $key => $r )
		{
			$dataroot[$r['file_id']] = $r;
		}
		if(isset($data['data']['extra']))
		{
			foreach($data['data']['extra'] as $key => $r)
			{
				if(is_numeric($key))
					continue;
				foreach($r as $key => $r2)
				{
					$dataroot[$r2['file_id']] = $r2;
				}
			}
		}
		return $dataroot;
	}
	public function compare_array($old,$new)
	{
		$miss = array();
		$newInsert = array();
		echo '<pre>';
		print_r($new);die;
		foreach($old['original'] as $key => $row)
		{
			if(!isset($new[$key]))
			{
				$miss[] = $row;
				continue;
			}
			//if($row['file_id'] != $)
		}
		
	}
	public function createFolder($service,$name,$parent,$id_parent,$id_sender,$update_at = "" ,$row = array(),$type = 0)
	{
		
		$id = $this->drive->createFolder($service,$name,$parent);

		$insert = array("name"=>$name,"id_folder_drive"=>$id['id'],'id_parent'=>$id_parent,'id_sender'=>$id_sender,"updated_at"=> $update_at,'created'=>time(),"type"=>$type);

		$this->db->insert('folder',$insert);
		$insert['id'] = $this->db->insert_id();
		
		if(!empty($row))
		{
			$this->db->insert('folder_data',array('id_folder'=>$insert['id'],'data'=>json_encode($row),'save_time'=>time()));
		}
		return $insert;
	}
	public function getClient()
	{
	    $client = new Google_Client();
	    $client->setApplicationName('WebTeexcorpUploadFIle');
	    $client->setScopes(Google_Service_Drive::DRIVE);
	    $client->setAuthConfig('credentials.json');
	    $client->setAccessType('offline');
	    $client->setPrompt('select_account consent');

	    $tokenPath = 'token.json';

	    if (file_exists($tokenPath))
	    {
	        $accessToken = json_decode(file_get_contents($tokenPath), true);
	        $client->setAccessToken($accessToken);
	    }

	    // If there is no previous token or it's expired.
	    if ($client->isAccessTokenExpired())
	    {
	    	
	        // Refresh the token if possible, else fetch a new one.
	        if ($client->getRefreshToken()) {
	            $client->fetchAccessTokenWithRefreshToken($client->getRefreshToken());
	        } else {
	        	echo "Token het han";die;
	            // Request authorization from the user.
	            $authUrl = $client->createAuthUrl();
	            printf("Open the following link in your browser:\n%s\n", $authUrl);
	            print 'Enter verification code: ';
	            $authCode = trim(fgets(STDIN));

	            // Exchange authorization code for an access token.
	            $accessToken = $client->fetchAccessTokenWithAuthCode($authCode);
	            $client->setAccessToken($accessToken);

	            // Check to see if there was an error.
	            if (array_key_exists('error', $accessToken)) {
	                throw new Exception(join(', ', $accessToken));
	            }
	        }
	        // Save the token to a file.
	        if (!file_exists(dirname($tokenPath))) {
	            mkdir(dirname($tokenPath), 0700, true);
	        }
	        file_put_contents($tokenPath, json_encode($client->getAccessToken()));
	    }
	    return $client;
	}
	

}?>
