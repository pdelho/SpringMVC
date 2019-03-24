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
	        var div = $("#divExercise");
	        div.animate({height: '300px', opacity: '0.4'}, "slow");
	        div.animate({width: '300px', opacity: '0.8'}, "slow");
	        div.animate({height: '100px', opacity: '0.4'}, "slow");
	        div.animate({width: '100px', opacity: '0.8'}, "slow");
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
            <li class="breadcrumb-item active">Exercise 4</li>
        </ol>
        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <%@ include file="/WEB-INF/views/coding/jQuery/common/sidebar.jsp"%>
            <!-- Content Column -->
            <div class="col-lg-9 mb-4">
            	<h2>animate()</h2> <a href="https://www.w3schools.com/jquery/jquery_animate.asp">Reference</a>
            	<br>
				<button>Start Animation</button>
				<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position,
				remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>	
				<div id ="divExercise" style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>
            </div>
        </div>
        <!-- /.row -->
        

    </div>
    
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>