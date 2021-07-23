<?php
class GoogleDrive
{
	public function insertFile($service, $file, $name, $parentId="", $title ="", $description ="", $mimeType = "application/octet-stream" )
	{
	  $file = new Google_Service_Drive_DriveFile();

	  $file->setName($name);
	  $file->setTitle($title);
	  $file->setDescription($description);
	  // /$file->setMimeType($mimeType);

	  // Set the parent folder.
	  if ($parentId != null)
	  {
	    $parent = new Google_Service_Drive_ParentReference();
	    $parent->setId($parentId);
	    $file->setParents(array($parent));
	  }

	  try {
	    $data = file_get_contents($filename);

	    $createdFile = $service->files->insert($file, array(
	      'data' => $data,
	      'mimeType' => $mimeType,
	      'uploadType' => 'resumable'
	    ));

	    // Uncomment the following line to print the File ID
	    // print 'File ID: %s' % $createdFile->getId();

	    return $createdFile;

	  } catch (Exception $e)
	  {
	    print "An error occurred: " . $e->getMessage();
	  }
	}
}

?>