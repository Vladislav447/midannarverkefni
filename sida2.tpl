<!DOCTYPE html>
<html>
<head>
	<title>Midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="/Myndir,css/style.css">
	<meta charset="utf-8">
</head>
<body>
	<h1>{{[name]}}</h1>
	<a href="/">Til baka.</a>
	<div class="k">
	<h3>staður</h3>
	<h3>Bensín verð</h3>
	<h3>Díesel verð</h3>
	</div>
	<div class="k2">
	%for i in data["results"]:
	%	if name == i["company"]:
		<section>{{i["name"]}}</section>
		<section>{{i["bensin95"]}}</section>
		<section>{{i["diesel"]}}</section>
		% end
	% end
	</div>
</body>
</html>
