<?php 
class GoogleDrive_Model extends CI_Model 
{
        public function create($service, $url, $name, $parentId = "", $description ="", $mimeType = "application/octet-stream" )
        {
          $file = new Google_Service_Drive_DriveFile();

          $file->setName($name);
         
          $file->setDescription($description);
          // /$file->setMimeType($mimeType);

          // Set the parent folder.
          if ($parentId)
          {
             $file->setParents([$parentId]); 
            //$parent = new Google_Service_Drive_ParentReference();
            //$parent->setId($parentId);
            //$file->setParents(array($parent));
          }

          try {
            $data = file_get_contents($url);

            $createdFile = $service->files->create($file, array(
              'data' => $data,
              'mimeType' => $mimeType,
              'uploadType' => 'resumable'
            ));

            // Uncomment the following line to print the File ID
            // print 'File ID: %s' % $createdFile->getId();

            return array('id'=>$createdFile->getId());

          } catch (Exception $e)
          {
            throw new Exception("An error occurred: " . $e->getMessage(), 1);
            
          }
        }
        public function updateFile($service, $url, $fileId, $title ="", $mimeType = "application/octet-stream")
        {
          try {
            $file = new Google_Service_Drive_DriveFile();

          // File's new metadata.
            $file->setName($title);
           // $file->setDescription();
            $file->setMimeType($mimeType);

          // File's new content.
          $data = file_get_contents($url);

          $additionalParams = array(
              'data' => $data,
              'mimeType' => $mimeType
          );

          $updatedFile = $service->files->update($fileId, $file, $additionalParams);
          } catch (Exception $e)
          {
            throw new Exception($e->getMessage(), 1);
                
          }
        }
        public function delete($service, $fileId)
        {
          try {
            $service->files->delete($fileId);
            return true;
          } catch (Exception $e) {
            throw "An error occurred: " . $e->getMessage();
          }
        }
        public function copyFile($service, $originFileId, $coppyName ,$parent = "")
        {
          $copiedFile = new Google_Service_Drive_DriveFile();
          $copiedFile->setName($coppyName);
          if($parent)
          {
            $copiedFile->setParents([$parent]);
          } 
          try {
            return $service->files->copy($originFileId, $copiedFile);
          } catch (Exception $e) {
            print "An error occurred: " . $e->getMessage();
          }
          return NULL;
        }
        public function createFolder($service,$folderName,$parent = "")
        {
          try {
            $file = new \Google_Service_Drive_DriveFile();
            $file->setName($folderName);
            $file->setMimeType('application/vnd.google-apps.folder');
            if($parent)
            {
              $file->setParents([$parent]); 
            }
            $api = $service->files->create($file);
            return array('id'=> $api->getId());

          } catch (Exception $e)
          {
            throw new Exception("An error occurred: ".$e->getMessage(), 1);
          }
        }

}
?>