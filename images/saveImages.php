<?php

	if(isset($_POST['data']) && isset($_POST['name']) && isset($_POST['idPost'])){
		$data = $_POST['data'];
		$fileName = time().$_POST['name'];
		list(, $data) = explode(',', $data);
		$data = base64_decode($data);

		file_put_contents($fileName, $data);

		include '../php/config.php';

		$conn = new mysqli($server,$login,$password,$database);

		if ($conn->connect_error) {
	  		die("Connection failed: " . $conn->connect_error);
		} 

		$conn->set_charset("utf8");
		$sql = "INSERT INTO images(photoName)
				VALUES('$fileName')";

		if ($conn->query($sql) === TRUE) {
			echo  'wszystko spoko';
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
		$id = mysqli_insert_id($conn);

		$sql = "SELECT * FROM posts WHERE post_id = ".$_POST['idPost'];

		if ($conn->query($sql) === TRUE) {
			echo 'wszystko spoko';
	
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
		$images = '';
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
		    while($row = mysqli_fetch_assoc($result)) {
		       if(!empty($row['images'])){
		       	$images = $row['images'].',';
		       }
		    }
		} else {
		    echo "0 results";
		}
		$data = $images . $id;
		$sql = "UPDATE posts SET images = '$data' WHERE post_id =".$_POST['idPost'];
		if ($conn->query($sql) === TRUE) {
			echo'wszystko spoko';
	
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
			
		$conn->close();
	}else{
		echo "Something wrong in save images";
	}

?>