<?php
	//sprawdzanie czy ajax wszystko wysłał
	if(isset($_POST['result'])&&isset($_POST['name'])){
		$data = $_POST['result'];
		//robienie nowej nazwy
		$fileName = time() .'_'. $_POST['name'];
		list(, $data) = explode(',', $data);
		$data = base64_decode($data);

		file_put_contents($fileName, $data);

		//test czy plik został zapisany
		$test = file_exists($fileName);
		if($test){

			include '../php/config.php';

			$conn = new mysqli($server,$login,$password,$database);

			if ($conn->connect_error) {
		  		die("Connection failed: " . $conn->connect_error);
			} 

			$conn->set_charset("utf8");
			if(isset($_POST['mainImage'])&&isset($_POST['position'])){
				//usuwamy poprzednie zdjęćie jeśli jest

				$sql = "INSERT INTO images (image_name,main_image,position) VALUES
						( '$fileName',1,'". $_POST['position']."' )";
			}elseif(empty($_POST['mainImage'])){
				$sql = "INSERT INTO images (image_name,main_image) VALUES
						( '$fileName',0)";
			}else{
				echo "32 linijka jaiś błąd";
			}
			

			if ($conn->query($sql) === TRUE) {

			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}

			$sql = "SELECT * from `images` WHERE image_name='$fileName'";

			if ($conn->connect_error) {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}

			$result = mysqli_query($conn, $sql);

			if (mysqli_num_rows($result) > 0) {
	    	// output data of each row
			    while($row = mysqli_fetch_assoc($result)) {
			        $data = ['id' => $row['image_id'], 'name' => $row['image_name']];
			        echo json_encode($data, JSON_UNESCAPED_UNICODE);
			    }
		    
			} else {
			    echo "";
			}
			
				
			$conn->close();
		}else{
			echo "Zdjęcie się nie zapisało.";
			echo "File name: ".$fileName;
		}
	}elseif(isset($_POST['remove'])&&isset($_POST['id'])) {
		//usuwanie zdjęć z bazy
		$id = $_POST['id'];

		include '../php/config.php';

		$conn = new mysqli($server,$login,$password,$database);

		if ($conn->connect_error) {
		  	die("Connection failed: " . $conn->connect_error);
		}

		$sql = "SELECT * FROM `images` WHERE image_id = $id";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
	    	// output data of each row
			while($row = mysqli_fetch_assoc($result)) {

				$sql = "DELETE FROM images WHERE image_id = $id";

				mysqli_query($conn,$sql);

			    $name = $row['image_name'];

			    unlink($name);
			    $test = file_exists($name);

			    if(!$test){
			    	echo "zdjecie: ".$name." zostało usunięte";
			    }

			}
		    
		} else {
			 echo "";
		}

		$conn->close();
	}else{
		echo "Something wrong in save images";
	}

?>