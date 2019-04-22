<?php
	include 'config.php';

	$conn = new mysqli($server,$login,$password,$database);
	if ($conn->connect_error) {
  		die("Connection failed: " . $conn->connect_error);
	} 
	$conn->set_charset("utf8");

	if(!empty($_POST['groupImg'])&& $_POST['onlyMainImg'] == true){
		$sql = "SELECT `images`.* FROM `imagegroup`
				INNER JOIN images on `imagegroup`.`id_image`=`images`.`image_id`
				and `imagegroup`.`id_group`='".$_POST['groupImg']."'
				and `images`.`main_image`='1'";

				$result = mysqli_query($conn, $sql);

				if (mysqli_num_rows($result) > 0) {
				    while($row = mysqli_fetch_assoc($result)) {
				        echo $row['image_name'];
				    }
				}


	}elseif(!empty($_POST['groupImg'])&& $_POST['onlyMainImg'] == false){
		$sql = "SELECT `images`.* FROM `imagegroup`
				INNER JOIN images on `imagegroup`.`id_image`=`images`.`image_id`
				and `imagegroup`.`id_group`='".$_POST['groupImg']."'";

		$result = mysqli_query($conn, $sql);
		$data = array();
		if (mysqli_num_rows($result) > 0) {
			while($row = mysqli_fetch_assoc($result)) {
				array_push($data,array('imgName' => $row['image_name']));
			}
		}

		echo json_encode($data, JSON_UNESCAPED_UNICODE);
	}


	$conn->close();
?>