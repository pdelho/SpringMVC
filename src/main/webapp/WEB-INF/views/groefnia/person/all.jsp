<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	
	 <!-- Table CSS -->
	 <link href="<%=request.getContextPath()%>/resources/css/table.css" rel="stylesheet">

</head>



<body>
	
	<!-- Navigation -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">List of Citizens <small>in Groefnia</small></h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a  href="<spring:url value ="/"/>">Home</a>
            </li>
            <li class="breadcrumb-item active">List of citizens</li>
        </ol>

        <!-- Intro Content -->
        <div class="row">
	        
            <div class="col-lg-6">
            <form action="<spring:url value ="/person/add"/>">
			    <input type="submit" value="Register as Gorefnish citizen!" />
			</form>
			<br>
            <table class="tg">
			  <tr>
			    <th class="tg-9hbo">Id</th>
			    <th class="tg-9hbo">Name</th>
			    <th class="tg-9hbo">Surname</th>
			    <th class="tg-9hbo">Description</th>
			    <th class="tg-9hbo">Age</th>
			    <th class="tg-9hbo">Actions</th>
			  </tr>
                <c:forEach items="${persons}" var="person">
					<c:if test="${not empty person}">
					<tr>
						<td class="tg-yw4l"><i><c:out value="${person.id}" /></i></td>
						<td class="tg-yw4l"><c:out value="${person.firstName}" /></td>
						<td class="tg-yw4l"><c:out value="${person.lastName}" /></td>
						<td class="tg-yw4l"><c:out value="${person.description}" /></td>
						<td class="tg-yw4l"><c:out value="${person.age}" /></td>
						<td class="tg-yw4l"><a href="<c:url value="/person/${person.id}"/>">Update</a>
											<a href="<c:url value="/person/delete/${person.id}"/>">Delete</a></td>
					</tr>			
					</c:if>
				</c:forEach>
			</table>
			<br>		
            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
    
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
        <p class="m-0 text-center text-white">2017</p>
        </div>
    </footer>
</body>
</html>
