<?php
	include 'config.php';

	$conn = new mysqli($server,$login,$password,$database);
	if ($conn->connect_error) {
  		die("Connection failed: " . $conn->connect_error);
	} 
	$conn->set_charset("utf8");

	if(empty($_POST['postId'])){
		echo "wartość $_post jest pusta.";
	}else{
		$imagesArray = [];
		$postId = $_POST['postId'];
		$sql = "SELECT * FROM `images` WHERE post_id = $postId";
		$result = mysqli_query($conn, $sql);
		if (mysqli_num_rows($result) > 0) {
		    while($row = mysqli_fetch_assoc($result)) {
		        array_push($imagesArray, $row['imageName']);
		    }
		    echo json_encode($imagesArray);
		} else {
			return false;
		}
	}


	$conn->close();
?>