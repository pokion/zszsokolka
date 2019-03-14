<?php
	include 'config.php';
	$title = $_POST['title'];
	$body = $_POST['body'];
	if(!empty($title)&&!empty($body)){
		$conn = new mysqli($server,$login,$password,$database);

		if ($conn->connect_error) {
	  		die("Connection failed: " . $conn->connect_error);
		} 

		$conn->set_charset("utf8");

		$sql = "INSERT INTO posts(title,body)
				VALUES('$title','$body')";

				if ($conn->query($sql) === TRUE) {
				    
				    $data = ['status'=>"New record created successfully",'Id'=>mysqli_insert_id($conn)];
				    echo json_encode($data);
				} else {
				    echo "Error: " . $sql . "<br>" . $conn->error;
				}

		$conn->close();
	}else{
		echo "Pola są puste.";
	}

	
?>