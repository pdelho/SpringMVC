<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script src="jquery.ui.touch-punch.min.js"></script>
	
	<!-- Sortable CSS -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<style>
		.sortable { list-style-type: none; margin: 0; padding: 0; width: 80%; }
		.sortable li { margin: 0 3px 3px 3px; padding: 0.3em; padding-left: 1.8em; font-size: 1.4em; height: -5px; }
		.sortable li span { position: absolute; margin-left: -1.3em; }
	 </style>
	 
	 <!-- Sortable -->
	  <script>
		$( function() {
			
	    	$( ".sortable" ).sortable({
				stop: function(event, ui) {
					var cnt = 1;
			        $(this).children('li').each(function(){
			        	// Update the shown value
			            $(this).children('span').text(cnt);
			        	// Update the form value
			            $(this).children('input[type=hidden].position').val(cnt);
			            cnt++;
			        });
				}
			});
	    	
	    	$( ".sortable" ).disableSelection();
  		});
	  </script>

</head>



<body>
	
	<!-- Navigation -->
    <%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Champions <small>Simulator</small></h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a  href="<spring:url value ="/"/>">Home</a>
            </li>
            <li class="breadcrumb-item active">Champions Simulator</li>
        </ol>
        
        <spring:url value="/simulation" var="userActionUrl" />
        <form:form action="${userActionUrl}" method="post" modelAttribute="teamForm">
       	 	<c:forEach items="${teamForm.teams}" var="team" varStatus="status">
       	 	
       	 	<c:if test="${status.index % 12 == 0}">
			<!-- add row every 3 groups -->
				<div class="row">
			</c:if>
       	 		
       	 		
				<c:if test="${status.index % 4 == 0}">
				<!-- When new group, add sortable and letter -->
					<div class="col-lg-4 mb-4">
						<h3>Group ${team.groupChar}</h3>
						<ul class="sortable">
				</c:if>
							<li class="ui-state-default"><span>${team.position}</span>
					            <input type="hidden" name="teams[${status.index}].id"			value="${team.id}" /> 
					            <input type="hidden" name="teams[${status.index}].name" 		value="${team.name}" /><c:out value="${team.name}" />
					            <input type="hidden" name="teams[${status.index}].groupChar" 	value="${team.groupChar}"/>
					            <input type="hidden" name="teams[${status.index}].position" 		value="${team.position}"  class="position" />
					            <input type="hidden" name="teams[${status.index}].country" 		value="${team.country}" /><c:out value="${team.country}" />
					            <input type="hidden" name="teams[${status.index}].rating" 		value="${team.rating}"/>
					      	</li>
				
				<c:if test="${status.index % 4 == 3}">
				<!-- When finish group, finish sortable -->
						</ul>
					</div>
				</c:if>
			<c:if test="${status.index % 12 == 11}">
			<!-- finish row every 3 groups -->
				</div>
			</c:if>	
       	 	</c:forEach>
       	 	
        	<div class="col-lg-4 mb-4">
        		<p>Make your own prediction of the Champions League group stage by dragging the team boxes
        		The positions of the teams will be automatically updated
        		Calculate how many chances has a team to face each other taking into account
        		 that teams in same group or from the same country can't face each other</p>
        		<p><b>Caution: this may take around 10 minutes!</b> See calculation details for more detailed information</p>
        		<input class="btn btn-primary" type="submit" value="Calculate" />
        		</div>
        	</div>
			
			<br>
		</form:form>		
  	</div>

    
    
	<!-- Footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
    
</body>
</html>
