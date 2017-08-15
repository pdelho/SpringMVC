<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Page</title>
</head>
<body>
<spring:url value="/person" var="userActionUrl" />
	<form action="${userActionUrl}" method="post">
		First Name: <input type="text" name="firstName"><br>
		Last Name: <input type="text" name="lastName"><br>
		Description: <input type="text" name="description"><br>
		Age: <input type="number" name="age"><br>
		<input type="submit" value="Register as Groefnish citizen!">
	</form>
</body>
</html>