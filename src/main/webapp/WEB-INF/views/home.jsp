<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<a class="active" href="<c:url value="/login"/>">Login</a>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>

	<form action="translation" method="post">
		<input type="text" name="translation"><br> <input
			type="submit" value="Translate something to Groefnish!">
	</form>
</body>
</html>
