<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Person</title>
</head>
<body>
<spring:url value="/delete" var="personUpdateUrl" />
	<form action="${personUpdateUrl}" method="post">
		<input type="hidden" name="id" value="${person.id}">
		First Name: <input type="text" name="firstName" value = "${person.firstName}"><br>
		Last Name: <input type="text" name="lastName" value = "${person.lastName}"><br>
		Description: <input type="text" name="description" value = "${person.description}"><br>
		Age: <input type="number" name="age" value = "${person.age}"><br>
		<input type="submit" value="Good bye to Groefnia!">
	</form>
</body>
</html>