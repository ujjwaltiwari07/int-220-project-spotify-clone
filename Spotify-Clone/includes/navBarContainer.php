<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo.png">
		</span>


		<div class="group">
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">Browse</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('genre.php')" class="navItemLink">Language</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('artists.php')" class="navItemLink">Artists</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('songs.php')" class="navItemLink">Songs</span>
			</div>


			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"> <?php echo $userLoggedIn->getFirstAndLastName(); ?></span>
			</div>
		</div>

	</nav>
</div>