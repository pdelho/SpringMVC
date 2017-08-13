<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<a class="active" href="<c:url value="/login"/>">Login</a>
	<a class="active" href="<c:url value="/person/add"/>">Add</a>
	<a class="active" href="<c:url value="/persons"/>">Persons</a>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	${Kim}
	<c:forEach items="${persons}" var="person">
		<c:if test="${not empty person}">
			<c:out value="${person.id}"/> <i><c:out value="${person.firstName}"/></i> <c:out value="${person.lastName}"/> <c:out value="${person.description}"/><br>
		</c:if>      
    </c:forEach>

	<form action="translation" method="post">
		<input type="text" name="translation"><br> <input
			type="submit" value="Translate something to Groefnish!">
	</form>
</body>
</html>
