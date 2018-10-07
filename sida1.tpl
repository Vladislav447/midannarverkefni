<!DOCTYPE html>
<html>
<head>
	<title>Midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="/Myndir,css/style.css">
	<meta charset="utf-8">
</head>
<body>
	<h1>Vladislav Krasovsky</h1>
	<div class="box">
		<div class="m">
			<img src="/Myndir,css/AO.png">
			<img src="/Myndir,css/Costco.png">
			<img src="/Myndir,css/Dælan.png">
			<img src="/Myndir,css/N1.png">
			<img src="/Myndir,css/OB.png">
			<img src="/Myndir,css/Olís.png">
			<img src="/Myndir,css/Orkan.png">
			<img src="/Myndir,css/Orkanx.png">
		</div>
	</div>
	<h3>Lægsta verð á 95 oktana bensín er 197.9 kr. hjá Costco.</h3>
	<h3>Lægsta verð Díesel er 196.9 kr. hjá Costco.</h3>
	<h2>Söluaðila yfirlit:</h2>
		<%
		listi=[]
		for i in data["results"]:
			if i["company"] not in listi:
				listi.append(i["company"])
			end
		end
		%>
		%for i in listi:
		<ul>
			<li>
				<a href="/sida2/{{i}}">{{i}}</a>
			</li>
		</ul>
</body>
</html>
