<?php
class Curl
{
	

	public function call($url, $param = '', $header_custom = '', $cookie='', $get_header = false)
	{
		$header = array('Accept: application/json', 'Content-Type: application/json');
		if($header_custom)
			$header = $header_custom;
	
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
		curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36");
		if($param){
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS,$param);
		}
		if($cookie){
			curl_setopt($ch, CURLOPT_COOKIEFILE, getcwd().'/'.$cookie);
			curl_setopt($ch, CURLOPT_COOKIEJAR, getcwd().'/'.$cookie);
		}
		if($get_header)
		{
			curl_setopt($ch, CURLOPT_HEADER, 1);
		}
		$res = curl_exec($ch);
		curl_close($ch);
		return $res;
	}
	public function callData($url, $param = '', $header_custom = '', $cookie='', $get_header = false)
	{
		$header = array();
		if($header_custom)
			$header = $header_custom;
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
		curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36");
		if($param){
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS,$param);
		}
		if($cookie){
			curl_setopt($ch, CURLOPT_COOKIEFILE, getcwd().'/'.$cookie);
			curl_setopt($ch, CURLOPT_COOKIEJAR, getcwd().'/'.$cookie);
		}
		if($get_header)
		{
			curl_setopt($ch, CURLOPT_HEADER, 1);
		}
		$res = curl_exec($ch);
		curl_close($ch);
		return $res;
	}
	public function uploadFile($access_token, $file, $mime_type, $name) {
    $GAPIS = 'https://www.googleapis.com/';
    echo $GAPIS . 'upload/drive/v3/files?uploadType=media&key='.$access_token;die;
    $ch1 = curl_init();

    // don't do ssl checks
    curl_setopt($ch1, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch1, CURLOPT_SSL_VERIFYHOST, false);

    // do other curl stuff
    curl_setopt($ch1, CURLOPT_URL, $GAPIS . 'upload/drive/v3/files?uploadType=media&key='.$access_token);
    curl_setopt($ch1, CURLOPT_BINARYTRANSFER, 1);
    curl_setopt($ch1, CURLOPT_POST, 1);
    curl_setopt($ch1, CURLOPT_POSTFIELDS, file_get_contents($file));
    curl_setopt($ch1, CURLOPT_RETURNTRANSFER, true);

    // set authorization header
   $headers = array('Content-Type: '.$mime_type, 'Content-Length: ' . filesize($file));
    curl_setopt($ch1, CURLOPT_HTTPHEADER,  $headers);

    // execute cURL request
    $response=curl_exec($ch1);
    echo $response;die;
    if($response === false){
        $output = 'ERROR: '.curl_error($ch1);
    } else{
        $output = $response;
    }

    // close first request handler
    curl_close($ch1);

    // now let's get the ID of the file we just created
    // and submit the file metadata
    $this_response_arr = json_decode($response, true);

    if(isset($this_response_arr['id'])){
        $this_file_id = $this_response_arr['id'];

        $ch2 = curl_init();

        // don't do ssl checks
        curl_setopt($ch2, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch2, CURLOPT_SSL_VERIFYHOST, false);

        // do other curl stuff
        curl_setopt($ch2, CURLOPT_URL, $GAPIS . 'drive/v3/files/'.$this_file_id);
        curl_setopt($ch2, CURLOPT_CUSTOMREQUEST, 'PATCH');

        // initialize fields to submit
        $post_fields = array();

        // remove extension
        $this_file_name = explode('.', $name);

        // submit name field
        $post_fields['name']=$this_file_name[0];

        curl_setopt($ch2, CURLOPT_POSTFIELDS, json_encode($post_fields));

        // return response as a string
        curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);

        // set authorization header
        curl_setopt($ch2, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'Authorization: Bearer ' . $access_token) );

        // execute cURL request
        $response=curl_exec($ch2);
        if($response === false){
            $output = 'ERROR: '.curl_error($ch2);
        } else{
            $output = $response;
        }

        // close second request handler
        curl_close($ch2);
    }

    return $output;
}
}
	
?>