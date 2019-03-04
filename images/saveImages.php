<?php
	echo "string";
	if($_FILES['file']['name'] != ''){
		$test = explode('.',$_FILES['file']['name']);
		$extension = end($test);
		$name = rand(100,999) . '.' . $extension;
		move_uploaded_file($_FILES['file']['tmp_name'],'./upload'.$name);
		echo $test;
		echo $extension;
		echo $name;
	}else{
		echo "tu jest błąd";
	}
?>