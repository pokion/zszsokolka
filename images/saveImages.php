<?php
	//sprawdzanie czy ajax wszystko wysłał
	if(isset($_POST['data']) && isset($_POST['name']) && isset($_POST['idPost'])){
		$data = $_POST['data'];
		//robienie nowej nazwy
		$fileName = time().'_'.$_POST['name'];
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
			$sql = "INSERT INTO images (imageName,post_id) VALUES
						( '$fileName',". $_POST['idPost']." )";

			if ($conn->query($sql) === TRUE) {
				echo  'wszystko spoko';
			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}

			
				
			$conn->close();
		}else{
			echo "Zdjęcie się nie zapisało.";
			echo "File name: ".$fileName;
		}
	}else{
		echo "Something wrong in save images";
	}

?>