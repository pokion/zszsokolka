<?php

	if(isset($_POST['data']) && isset($_POST['name']) && isset($_POST['id'])){
		$data = $_POST['data'];
		$fileName = time().$_POST['name'];
		list(, $data) = explode(',', $data);
		$data = base64_decode($data);

		file_put_contents($fileName, $data);

	}else{
		echo "Something wrong in save images";
	}
	
?>