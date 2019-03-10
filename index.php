<! DOCTYPE html>

<?php $test = "this is a php string."; ?>

<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" href="/public/bin/css/main.css">
	</head>
	<body>
		<div class="jumbotron text-center">
			<input type='text' id='lol-search-box'>
		</div>
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<span id='lol-champion-icon'></span>
					<h2 id='lol-champion-name'></h2>
					<p id='lol-champion-desc'></p>
				</div>
			</div>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="/public/bin/javascript/main.js"></script>
		</div>
	</body>
</html>