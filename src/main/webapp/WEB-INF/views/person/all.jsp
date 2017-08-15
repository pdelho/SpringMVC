<%@ include file="/WEB-INF/views/include.jsp"%>

<html>
<head>
<title>Home</title>
</head>
<body>
<a class="active" href="<c:url value="/person/add"/>">Add</a><br>

	<c:forEach items="${persons}" var="person">
		<c:if test="${not empty person}">
			<c:out value="${person.id}" />
			<i><c:out value="${person.firstName}" /></i>
			<c:out value="${person.lastName}" />
			<c:out value="${person.description}" />
			<a href="<c:url value="/person/${person.id}"/>">Update</a>
			<a href="<c:url value="/person/delete/${person.id}"/>">Delete</a>
			<br>
			<br>
		</c:if>
	</c:forEach>

</body>
</html>