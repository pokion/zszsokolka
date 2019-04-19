<?php
	if($inc==='createPosts'){ ?>

		<div class="navbar-fixed">
			<nav class="bg5">
				<div class="nav-wrapper  container">
			    	<a href="#" class="brand-logo">Logo</a>
			    	<ul id="nav-mobile" class="right hide-on-med-and-down">
			    		<li><a href="../html/index.php">Strona Główna</a></li>
							<li><a href="../php/logout.php">Wyloguj</a></li>
			    	</ul>
				</div>
			</nav>
		</div>

	<?php } else{ ?>
<!-- nav -->
		<div class="navbar-fixed">
			<nav class="bg5">
				<div class="nav-wrapper  container">
					<a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
			    	<a href="#" class="brand-logo">Logo</a>
						<ul id="dropdown1" class="dropdown-content">
						  <li class="collection-item"><a href="rekrutacja_gim.php">Po gimnazjum</a></li>
							<li class="divider"></li>
						  <li class="collection-item"><a href="rekrutacja_sp.php">Po szkole podstawowej</a></li>
						</ul>
			    	<ul id="nav-mobile" class="right hide-on-med-and-down">
			    		<li<?php if($inc==='index'){ ?> class="active" <?php } ?> ><a href="index.php">Strona główna</a></li>
						<li><a href="https://uonetplus.vulcan.net.pl/powiatsokolski">E-dziennik</a></li>
						<li<?php if($inc==='klasy'){} ?>><a href="#">Klasy</a></li>
						<li<?php if($inc==='rekrutacja'){ ?> class="active" <?php }  ?> ><a class="dropdown-trigger" data-target="dropdown1" data-beloworigin="true">Rekrutacja<i class="material-icons right">arrow_drop_down</i></a></li>
						<li<?php if($inc==='pracownicy'){ ?> class="active" <?php }  ?> ><a href="pracownicy_ajax.php">Pracownicy</a></li>
						<li<?php if($inc==='podreczniki'){} ?>><a href="podreczniki.php">Podręczniki</a></li>
			    	</ul>
				</div>
			</nav>
		</div>
	<!-- end nav -->
	<!-- sidenav -->
	<ul id="slide-out" class="sidenav">
		<li<?php if($inc==='index'){ ?>class="active" <?php } ?> ><a href="index.php">Strona główna</a></li>
		<li><a href="https://uonetplus.vulcan.net.pl/powiatsokolski">E-dziennik</a></li>
		<li<?php if($inc==='klasy'){} ?>><a href="#">Klasy</a></li>
		<li<?php if($inc==='rekrutacja'){ ?> class="active" <?php }  ?> ><a href="rekrutacja.php">Rekrutacja</a></li>
		<li<?php if($inc==='pracownicy'){} ?>><a href="#">Pracownicy</a></li>
		<li<?php if($inc==='podreczniki'){} ?>><a href="#">Podręczniki</a></li>
	</ul>
	<!-- sidenav end -->
<?php } ?>
	<!-- jakby nawigacja się posypała to sprawdź czy jest odstęp przed class
											o tutaj⬎
			<li<?php/* if($inc==='rekrutacja'){ */?> class="active" <?php /*}*/  ?>
	 -->
