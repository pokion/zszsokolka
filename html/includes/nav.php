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

						<ul id="drop-rekrutacja" class="dropdown-content dropdown-nested">
						  <li class="collection-item"><a href="rekrutacja_gim.php">Po gimnazjum</a></li>
							<li class="divider"></li>
						  <li class="collection-item"><a href="rekrutacja_sp.php">Po szkole podstawowej</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a class="dropdown-trigger nav" data-target="drop-kierunki">Kierunki<i class="material-icons right">arrow_drop_down</i></a></li>
						</ul>

						<ul id="drop-szkola" class="dropdown-content menu">
						  <li class="collection-item"><a href="pracownicy_ajax.php">Pracownicy</a></li>
							<li class="divider"></li>
						  <li class="collection-item"><a href="#!">Patron</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="#!">Historia</a></li>
						</ul>

						<ul id="drop-uczniowie" class="dropdown-content menu">
							<li class="collection-item"><a href="podreczniki.php">Podręczniki</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="#!">Klasy</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="#!">Samorząd</a></li>
						</ul>
						<ul id="drop-kierunki" class="dropdown-content menu ">
							<li class="collection-item"><a href="informatyk.php">Technik informatyk</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="fryzjer.php">Technik usług fryzjerskich</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="logistyk.php">Technik logistyk</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="mechanik.php">Technik mechanik</a></li>
						</ul>

			    	<ul id="nav-mobile" class="right hide-on-med-and-down">
			    		<li<?php if($inc==='index'){ ?> class="active" <?php } ?> ><a href="index.php">Strona główna</a></li>
						<li><a href="https://uonetplus.vulcan.net.pl/powiatsokolski">E-dziennik</a></li>
						<li<?php if($inc==='rekrutacja'){ ?> class="active" <?php }  ?> ><a class="dropdown-trigger nav" data-target="drop-rekrutacja">Rekrutacja<i class="material-icons right">arrow_drop_down</i></a></li>
						<li<?php if($inc==='drop-szkola'){ ?> class="active" <?php }  ?> ><a class="dropdown-trigger nav" data-target="drop-szkola">O szkole<i class="material-icons right">arrow_drop_down</i></a></li>
						<li<?php if($inc==='drop-uczniowie'){ ?> class="active" <?php }  ?> ><a class="dropdown-trigger nav" data-target="drop-uczniowie">Uczniowie<i class="material-icons right">arrow_drop_down</i></a></li>
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
