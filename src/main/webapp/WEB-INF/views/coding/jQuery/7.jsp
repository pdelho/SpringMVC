<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>

	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	
	
	<!-- JS for the Exercise -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
	    $("button").click(function(){
	        $("#p1").css("color", "red")
	            .slideUp(2000)
	            .slideDown(2000);
	    });
	});
	</script>

</head>



<body>
	
	<!-- Navigation --> 
    <%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">jQuery <small>Exercises</small></h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="<spring:url value ="/coding/jQuery"/>">jQuery</a>
            </li>
            <li class="breadcrumb-item active">Exercise 7</li>
        </ol>
        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <%@ include file="/WEB-INF/views/coding/jQuery/common/sidebar.jsp"%>
            <!-- Content Column -->
            <div class="col-lg-9 mb-4">
            	<h2>chaining</h2> <a href="https://www.w3schools.com/jquery/jquery_chaining.asp">Reference</a>
            	<br>
				<p id="p1">jQuery is fun!!</p>
				<button>Click me</button>
            </div>
        </div>
        <!-- /.row -->
        

    </div>
    
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>