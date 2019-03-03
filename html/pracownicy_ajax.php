<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Rekrutacja</title>

	<?php
		include_once('includes/header.php');
		include_once('../php/config.php');
		$inc = 'pracownicy';
	?>
<script>
function showYear(str) {
  if (str == "") {
    document.getElemenstByClassName("rok").innerHTML= str;
      return;
  } else {
      if (window.XMLHttpRequest) {
          // code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp = new XMLHttpRequest();
      } else {
          // code for IE6, IE5
          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
              document.getElemenstByClassName("carousel").innerHTML = this.responseText;
          }
      };
      xmlhttp.open("GET","pracownicy_ajax.php?q="+str , true);
      xmlhttp.send();
  }
}
</script>
</head>
<body>

  	<?php
  		include_once('includes/nav.php');
  	?>
  <div class="container">
    <div class="row">
			<div class="col s12">

        <select name="years" onchange="showYear(this.value)">
          <h2>Wybierz rok szkolny:</h2>
          <option value="1">2018/2019</option>
          <option value="2">2017/2018</option>
          <option value="3">2016/2017</option>
          <option value="4">2015/2016</option>
        </select>
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym <span class="rok"></span></h3>

              <div class="carousel">
                <?php
                $q = intval($_GET['q']);

                $con = mysqli_connect('localhost','root','','datapost');
                if (!$con) {
                    die('Could not connect: ' . mysqli_error($con));
                }

                mysqli_select_db($con,"datapost");
                $sql="SELECT * FROM positions WHERE rok = '".$q."'";
                $result = mysqli_query($con,$sql);

                echo "<table>
                <tr>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Age</th>
                <th>Hometown</th>
                <th>Job</th>
                </tr>";
                while($row = mysqli_fetch_array($result)) {
                    echo "<tr>";
                    echo "<td>" . $row['teacherID'] . "</td>";
                    echo "<td>" . $row['rok'] . "</td>";
                    echo "<td>" . $row['position'] . "</td>";
                    echo "</tr>";
                }
                echo "</table>";
                mysqli_close($con);
                ?>
  <?php
    include_once('includes/footer.php');
  ?>
</body>
</html>
