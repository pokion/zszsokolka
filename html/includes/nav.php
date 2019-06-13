<?php
	if($inc==='createPosts'){ ?>

		<div class="navbar-fixed">
			<nav class="bg5">
				<div class="nav-wrapper  container">
			    	<a href="index.php" class="brand-logo"><img height="100" src="../img/static/godlo_polski.svg.png"><img style="height: 100px" src="../img/static/logo.png"></a>
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
				<a href="index.php" class="brand-logo"><img style="height: 100px" src="../img/static/godlo_polski.svg.png"><img style="height: 100px" src="../img/static/logo.png"></a>
				<div class="nav-wrapper container">
					<a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>

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
						  <li class="collection-item"><a href="patron.php">Patron</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="historia.php">Historia</a></li>
						</ul>

						<ul id="drop-uczniowie" class="dropdown-content menu">
							<li class="collection-item"><a href="podreczniki.php">Podręczniki</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="klasy_ajax.php">Klasy</a></li>
							<li class="divider"></li>
							<li class="collection-item"><a href="samorzad_ajax.php">Samorząd</a></li>
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
						<li><a href="https://uonetplus.vulcan.net.pl/powiatsokolski" target="_blank">E-dziennik</a></li>
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
		<li><a href="index.php">Strona główna</a></li>
		<li><a href="https://uonetplus.vulcan.net.pl/powiatsokolski">E-dziennik</a></li>
		 <li class="no-padding">
			 <ul class="collapsible collapsible-accordion">
				 <li>
					 <a class="collapsible-header">Rekrutacja<i class="material-icons">arrow_drop_down</i></a>
					 <div class="collapsible-body">
						 <ul>
							 <li><a href="rekrutacja_gim.php">Po gimnazjum</a></li>
							 <li><a href="rekrutacja_sp.php">Po szkole podstawowej</a></li>
						 </ul>
					 </div>
				 </li>
			 </ul>
			 <ul class="collapsible collapsible-accordion">
				 <li>
					 <a class="collapsible-header">Kierunki<i class="material-icons">arrow_drop_down</i></a>
					 <div class="collapsible-body">
						 <ul>
							 <li><a href="informatyk.php">Technik informatyk</a></li>
							 <li><a href="fryzjer.php">Technik usług fryzjerskich</a></li>
							 <li><a href="logistyk.php">Technik logistyk</a></li>
							 <li><a href="mechanik.php">Technik mechanik</a></li>
						 </ul>
					 </div>
				 </li>
			 </ul>
			 <ul class="collapsible collapsible-accordion">
				 <li>
					 <a class="collapsible-header">O szkole<i class="material-icons">arrow_drop_down</i></a>
					 <div class="collapsible-body">
						 <ul>
							 <li class="collection-item"><a href="pracownicy_ajax.php">Pracownicy</a></li>
 						  <li class="collection-item"><a href="patron.php">Patron</a></li>
 							<li class="collection-item"><a href="historia.php">Historia</a></li>
						 </ul>
					 </div>
				 </li>
			 </ul>
			 <ul class="collapsible collapsible-accordion">
				 <li>
					 <a class="collapsible-header">Uczniowie<i class="material-icons">arrow_drop_down</i></a>
					 <div class="collapsible-body">
						 <ul>
							<li class="collection-item"><a href="podreczniki.php">Podręczniki</a></li>
 							<li class="collection-item"><a href="klasy_ajax.php">Klasy</a></li>
 							<li class="collection-item"><a href="samorzad_ajax.php">Samorząd</a></li>
						 </ul>
					 </div>
				 </li>
			 </ul>
	 </ul>
	<!-- sidenav end -->
<?php } ?>
	<!-- jakby nawigacja się posypała to sprawdź czy jest odstęp przed class
											o tutaj⬎
			<li<?php/* if($inc==='rekrutacja'){ */?> class="active" <?php /*}*/  ?>
	 -->
