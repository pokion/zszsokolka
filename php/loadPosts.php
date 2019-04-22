<?php
	include 'config.php';

	$postsId = array();
	$conn = new mysqli($server,$login,$password,$database);
	$conn->set_charset("utf8");
	if ($conn->connect_error) {
	  		die("Connection failed: " . $conn->connect_error);
		} 

		if(empty($_POST['date'])){
			$sql = "SELECT `post_id` from `posts` order by post_data desc limit 3";

			$result = mysqli_query($conn, $sql);

			if (mysqli_num_rows($result) > 0) {
			    while($row = mysqli_fetch_assoc($result)) {
			        array_push($postsId,$row['post_id']);
			    }
			}

			$data = array();

			foreach ($postsId as &$value) {
				$sql = "SELECT `posts`.*,`tags`.*,`id_group` FROM `conn`
						INNER JOIN posts ON `conn`.`id_post`=`posts`.`post_id`
						INNER JOIN tags ON `conn`.`id_tag`=`tags`.`tag_id` and
						`posts`.`post_id` = $value";
				$result = mysqli_query($conn, $sql);
				if (mysqli_num_rows($result) > 0) {
			    	while($row = mysqli_fetch_assoc($result)) {
			    	    array_push($data,array('postId' => $row['post_id'],
												'title' => $row['title'], 
												'body' => $row['body'], 
												'data' => $row['post_data'], 
												'tag' => $row['teag_name'], 
												'imgGroup' => $row['id_group']));
			   		}
				}
			}

			echo json_encode($data, JSON_UNESCAPED_UNICODE);


		}elseif (!empty($_POST['date'])){
			
		}
	
	$conn->close();
?>