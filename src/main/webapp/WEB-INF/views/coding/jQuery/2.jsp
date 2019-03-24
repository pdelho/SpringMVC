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
	        $("#div1").fadeToggle();
	        $("#div2").fadeToggle("slow");
	        $("#div3").fadeToggle(3000);
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
            <li class="breadcrumb-item active">Exercise 2</li>
        </ol>
        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <%@ include file="/WEB-INF/views/coding/jQuery/common/sidebar.jsp"%>
            <!-- Content Column -->
            <div class="col-lg-9 mb-4">
            	<h2>fadeToggle() with different speed parameters</h2> <a href="https://www.w3schools.com/jquery/jquery_fade.asp">Reference</a>
            	<br>
				<button>Click to fade in/out boxes</button><br><br>
				<div id="div1" style="width:80px;height:80px;background-color:red;"></div>
				<br>
				<div id="div2" style="width:80px;height:80px;background-color:green;"></div>
				<br>
				<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>
            </div>
        </div>
        <!-- /.row -->
        

    </div>
    
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>