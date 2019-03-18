<?php
	include 'config.php';

	$conn = new mysqli($server,$login,$password,$database);
	if ($conn->connect_error) {
  		die("Connection failed: " . $conn->connect_error);
	} 
	$conn->set_charset("utf8");

	if(empty($_POST['idImage'])){
		echo "nie ma idImage";
	}else{
		$sql = "SELECT `photoName` FROM `images` WHERE id = ".$_POST['idImage'];
		$result = mysqli_query($conn, $sql);
		if (mysqli_num_rows($result) > 0) {
		    while($row = mysqli_fetch_assoc($result)) {
		        echo $row['photoName'];
		    }
		} else {
		    echo "0 results";
		}
	}


	$conn->close();
?>