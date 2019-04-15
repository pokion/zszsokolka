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
			$sql = "INSERT INTO imagegroup(id_group,id_image)
									values('$idGroup',".$img['id'].")";
			if ($conn->query($sql) === TRUE) {

			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}
		}

		foreach ($tags as &$tag) {
			$sql = "SELECT * FROM tags WHERE teag_name ='".$tag['tg']."'";
			$tagId;
			$result = mysqli_query($conn,$sql);
			if (mysqli_num_rows($result) > 0) {
			    while($row = mysqli_fetch_assoc($result)) {
			        $tagId = $row['tag_id'];
			    }
		    
			} else {
			    echo "";
			}


			$sql = "INSERT INTO conn(id_post,id_group,id_tag)
									values($postId,'$idGroup',$tagId)";
			if ($conn->query($sql) === TRUE) {

			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}
		}

		$conn->close();

		echo $postId;

	}else{
		echo "Coś nie działa createPost.php";
	}

	
?>