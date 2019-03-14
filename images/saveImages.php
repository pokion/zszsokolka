<?php

	$data = $_POST['data'];
	$fileName = time().$_POST['name'];
	list(, $data) = explode(',', $data);
	$data = base64_decode($data);

	file_put_contents($fileName, $data);
?>