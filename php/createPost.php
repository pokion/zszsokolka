<?php
	include 'config.php';
	$database = 'datapost';
	$title = $_POST['title'];
	$body = $_POST['body'];

	$conn = new mysqli($server,$login,$password,$database);

	if ($conn->connect_error) {
  		die("Connection failed: " . $conn->connect_error);
	} 

	$conn->set_charset("utf8");

	$sql = "INSERT INTO posts(title,body)
			VALUES('$title','$body')";

			if ($conn->query($sql) === TRUE) {
			    echo "New record created successfully";
			} else {
			    echo "Error: " . $sql . "<br>" . $conn->error;
			}

	$conn->close();
?>