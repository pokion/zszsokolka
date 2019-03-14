<?php
	include 'config.php';

	$conn = new mysqli($server,$login,$password,$database);
	if ($conn->connect_error) {
	  		die("Connection failed: " . $conn->connect_error);
		} 

	if(empty($_POST['date'])){

		$conn->set_charset("utf8");
	
		$sql = "SELECT * from `posts` order by post_data desc limit 3";
	
				if ($conn->query($sql) === TRUE) {
				    return 'wszystko spoko';
	
				}else{
				    echo "Error: " . $sql . "<br>" . $conn->error;
				}
		$result = mysqli_query($conn, $sql);
	
		if (mysqli_num_rows($result) > 0) {
	    // output data of each row
		    while($row = mysqli_fetch_assoc($result)) {
		        $post =  '
		        		<div class="row">
		        			<div class="col s12 card">
								<h3 class="letterSpac">' .$row['title']. '</h3>
								<p class="right-align">' .$row['post_data']. '</p>
	
								<h5 class="letterSpac border">' .$row['body']. '</h5>
							</div>
		        		</div>
		        	';
		        $data = $row['post_data'];
		        $msg = ['post'=>$post,'data'=>$data];
		        echo json_encode($msg);
		    }
		} else {
		    echo "0 results";
		}
		/*koniec zapytania pierwszego*/
	}else{
		$data = $_POST['date'];
		$conn->set_charset("utf8");
	
		$sql = "SELECT * FROM posts WHERE post_data < DATE_SUB('$data', INTERVAL 1 DAY) ORDER BY `posts`.`post_data` DESC limit 3";
	
				if ($conn->query($sql) === TRUE) {
				    return 'wszystko spoko';
	
				} else {
				    echo "Error: " . $sql . "<br>" . $conn->error;
				}
		$result = mysqli_query($conn, $sql);
	
		if (mysqli_num_rows($result) > 0) {
	    // output data of each row
		    while($row = mysqli_fetch_assoc($result)) {
		        $post =  '
		        		<div class="row">
		        			<div class="col s12 card">
								<h3 class="letterSpac">' .$row['title']. '</h3>
								<p class="right-align">' .$row['post_data']. '</p>
	
								<h5 class="letterSpac border">' .$row['body']. '</h5>
							</div>
		        		</div>
		        	';
		        $data = $row['post_data'];
		        $msg = ['post'=>$post,'data'=>$data];
		        echo json_encode($msg);
		    }
		} else {
		    echo "0 results";
		}
	}

	$conn->close();
?>