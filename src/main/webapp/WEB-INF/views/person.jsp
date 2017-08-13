<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Person</title>
</head>
<body>
	<spring:url value="/person" var="personDeleteUrl" />
	You are about to delete an user!
	<form action="${personDeleteUrl}" method="post">
		<input type="hidden" name="id" value="${person.id}"> 
		First Name: <input type="text" name="firstName" value="${person.firstName}"><br>
		Last Name: <input type="text" name="lastName"	value="${person.lastName}"><br>
		Description: <input	type="text" name="description" value="${person.description}"><br>
		Age: <input type="number" name="age" value="${person.age}"><br>
		<input type="submit" value="Update your information">
	</form>
</body>
</html>