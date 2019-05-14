<?php
	include 'config.php';

	$postsId = array();
	$conn = new mysqli($server,$login,$password,$database);
	$conn->set_charset("utf8");
	if ($conn->connect_error) {
	  		die("Connection failed: " . $conn->connect_error);
		} 

		if(empty($_POST['date'])){
			$sql = "SELECT * from `posts` order by post_data desc limit 4";

			if ($conn->connect_error) {
					echo "Error: " . $sql . "<br>" . $conn->error;
				}
			$result = mysqli_query($conn, $sql);

			$data = array();

			if (mysqli_num_rows($result) > 0) {
		    // output data of each row
				
			    while($row = mysqli_fetch_assoc($result)) {
			        array_push($data,array(
			        	'postId'=>$row['post_id'],
			        	'tit'=>$row['title'],
			        	'bod'=>$row['body'],
			        	'tagsId'=>$row['tags_id'],
			        	'data'=>$row['post_data']
			        ));
			        
		    	}
		    }

		    echo json_encode($data, JSON_UNESCAPED_UNICODE);


		}elseif (!empty($_POST['date'])){
			
		}
	
	$conn->close();
?>