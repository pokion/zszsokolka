<?php
	if(!empty($_POST['tg'])&&!empty($_POST['images'])&&!empty($_POST['tit'])&&!empty($_POST['bod'])){
		$tags = json_decode($_POST['tg'],true);
		$images = json_decode($_POST['images'],true);
		$title = $_POST['tit'];
		$body = $_POST['bod'];

		include 'config.php';
		$conn = new mysqli($server,$login,$password,$database);
		$conn->set_charset("utf8");
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}

		$sql = "INSERT INTO posts(title,body)
								values('$title','$body')";

		if ($conn->query($sql) === TRUE) {

			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}
		$postId = mysqli_insert_id($conn);
		$idGroup = abs( crc32( uniqid() ) );

		foreach ($images as &$img) {

				$sql = "UPDATE images set id_posts = $postId WHERE id_image = ".$img['id'];

				if ($conn->query($sql) === TRUE) {

			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}

		}

		$tagsId = '';

		for ($i=0; $i < sizeof($tags); $i++) { 
			$tagsId = $tagsId.','.$tags[$i]['tg'];
		}

		$sql = "UPDATE posts set tags_id = '$tagsId' WHERE post_id = $postId";
		if ($conn->query($sql) === TRUE) {

			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}

		$conn->close();

		echo $postId;

	}else{
		echo "Coś nie działa createPost.php";
	}

	
?>