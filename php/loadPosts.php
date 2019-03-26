<?php
	include 'config.php';

	$conn = new mysqli($server,$login,$password,$database);
	if ($conn->connect_error) {
	  		die("Connection failed: " . $conn->connect_error);
		} 

	if(empty($_POST['date'])){

		$conn->set_charset("utf8");
	
		$sql = "SELECT * from `posts` order by post_data desc limit 3";
	
				if ($conn->connect_error) {
					echo "Error: " . $sql . "<br>" . $conn->error;
	
				}
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
	    // output data of each row
		    while($row = mysqli_fetch_assoc($result)) {
		        $data = ['data' => $row['post_data'],'title' => $row['title'], 'body' => $row['body'], 'postID' => $row['post_id']];
		        echo json_encode($data, JSON_UNESCAPED_UNICODE);
		        echo "|";

		    }
		    
		} else {
		    echo "";
		}
		/*koniec zapytania pierwszego*/
	}else{
		$data = $_POST['date'];
		$conn->set_charset("utf8");
	
		$sql = "SELECT * FROM posts WHERE post_data < DATE_SUB('$data', INTERVAL 1 DAY) ORDER BY `posts`.`post_data` DESC limit 3";
	
				if ($conn->connect_error) {
				    echo "Error: " . $sql . "<br>" . $conn->error;
	
				}
		$result = mysqli_query($conn, $sql);
	
		if (mysqli_num_rows($result) > 0) {
	    // output data of each row
		    while($row = mysqli_fetch_assoc($result)) {
		       	$data = ['data' => $row['post_data'],'title' => $row['title'], 'body' => $row['body'], 'images' => $row['images'], 'postID' => $row['post_id']];
		        echo json_encode($data, JSON_UNESCAPED_UNICODE);
		        echo "|";
		    }
		} else {
		    echo "0 results";
		}
	}

	$conn->close();
?>