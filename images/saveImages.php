<?php
if(isset($_FILES['file'])){
	echo $_FILES['file'];
		for($i=0; $i<count($_FILES['file']); $i++){
			$target_path = 'imagePosts/';
			$ext = explode('.', basename($_FILES['file']['name'][$i]));
			$target_path = $target_path.md5(uniqid()).'.'.$ext[count($ext-1)];

			if(move_uploaded_file($_FILES['file']['tmp_name'][$i], $target_path)) {
		        echo "The file has been uploaded successfully <br />";
		    } else{
		        echo "There was an error uploading the file, please try again! <br />";
		    }
		}
}
	

?>