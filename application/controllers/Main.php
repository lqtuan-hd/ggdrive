<?php (defined('BASEPATH')) OR exit('No direct script access allowed');
class Main extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('Main_model','img');
		$this->load->model('GoogleDrive_Model','drive');
	}
	public function index()
	{
		$data = json_decode(file_get_contents("data.json"),true);
		foreach($data as $key => $row){
			if($key == 4)
			{
				echo json_encode($row);
			}
		}

		
	}
	public function uploadFile()
	{
		try {
			
			$this->db->trans_start();

			$data = $this->img->getQueue();

			if(!$data)
				exit;

			
			$this->db->where(array('id'=>$data['id']))->set(array('status'=>2))->update('images');
			//die;

			$client = $this->getClient();
			$service = new Google_Service_Drive($client);

			$name = $data["name"].".".$data["type"];

			$r = $this->drive->create($service,$data["url"],$name,$data["id_folder_drive"]);
			
			if(isset($r['id']))
			{
				$this->db->where('id',$data['id'])->set(array('status'=>1,'id_img_drive'=>$r['id'],'last_change'=>time()))->update('images');
			}

			$this->db->trans_complete();

		} catch (Exception $e)
		{
			$this->db->where(array("id"=>$data["id"]))->set(array("status"=>4))->update("images");
			$this->db->insert("logs",array("id_img"=>$data["id"],"messages"=>$e->getMessage(),"time"=>time()));
			
		}
	}
	public function createFolder()
	{
		$client = $this->getClient();
		$service = new Google_Service_Drive($client);
		$this->drive->createFolder($service);
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
