<?php
	if(isset($_POST['load'])){
		include 'config.php';
		$conn = new mysqli($server,$login,$password,$database);
		if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}

		$sql = "SELECT * from `tags`";
			if ($conn->connect_error) {
					echo "Error: " . $sql . "<br>" . $conn->error;
				}
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
	    // output data of each row
			$data = array();
		    while($row = mysqli_fetch_assoc($result)) {
		        array_push($data,array('tag'=>$row['tag_name'],'id'=>$row['tag_id']));
		        
		    }

		    echo json_encode($data, JSON_UNESCAPED_UNICODE);
		}
	}else{
		echo "nic";
	}
?>