<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script src="<%=request.getContextPath()%>jquery.ui.touch-punch.min.js"></script>
	
	<!-- Sortable CSS -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<style>
		.sortable { list-style-type: none; margin: 0; padding: 0; width: 80%; }
		.sortable li { margin: 0 3px 3px 3px; padding: 0.3em; padding-left: 1.8em; font-size: 1.4em; height: -5px; }
		.sortable li span { position: absolute; margin-left: -1.3em; }
		.ui-state-default.green {background-color: #85FFA2}
		.ui-state-default.red {background-color: #FF9999}
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
			        	if (cnt <= 2){
			        		$(this).css('background-color', '#85FFA2');
			        	}
			        	if (cnt >= 3){
			        		$(this).css('background-color', '#FF9999');
			        	}
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
        <div class = row>
       	 	<p>Make your own prediction of the Champions League group stage by dragging the team boxes.</p>
        	<p>The positions of the teams will be automatically updated.</p>
        	<p>Calculate how many chances has a team to face each other taking into account that teams in same group or from the same country can't face each other.</p>
        	<p><a href="https://devcenter.heroku.com/articles/request-timeout">Heroku has a 30s request timeout.</a> 
	        As calculations with 8 groups takes longer than this time, I have included a checkbox. 
	        When activated, only groups E, F, G and H will be considered for demonstrative purposes.
	        <b>Please check this box</b> if you are running the simulation in Heroku.
	        <p>Run the application locally so that you can get your own draw chances<b> Caution: this case may take up to 10 minutes to simulate!</b>
	        However, I will post the results when the group stage is over.
	        <p>There are two pre-processed simulations to save time. You can choose either:</p>
	        	<ol>
	        		<li>Your own simulation. It has to be calculated and may take time as explained above</li>
	        		<li>The simulation assuming that teams in pots 1 and 2 (the selection when loading the page) pass through round of 16 as first and second respectively. It can be displayed immediately</li>
	        		<li>The simulation assuming that best teams <a href="https://es.wikipedia.org/wiki/Liga_de_Campeones_de_la_UEFA_2017-18#Fase_de_grupos">attending its UEFA ranking</a> pass through round of 16 as first and second
	        			<p>This is: Benfica,Manchester - Bayern,PSG - Atletico,Chelsea - Barcelona,Juventus - Sevilla,Liverpool - Manchester City,Napoli - Porto,Monaco - Real Madrid,Borussia Dormund</p></li>
	        	</ol>
	        
        </div>
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
							<li class="ui-state-default ${team.position <= 2 ? 'green' : 'red'} "><span>${team.position}</span>
							<img src ="<%=request.getContextPath()%>/resources/images/countries/${team.country}.png"></img>
					            <input type="hidden" name="teams[${status.index}].id"			value="${team.id}" /> 
					            <input type="hidden" name="teams[${status.index}].name" 		value="${team.name}" /><c:out value="${team.name}" />
					            <input type="hidden" name="teams[${status.index}].groupChar" 	value="${team.groupChar}"/>
					            <input type="hidden" name="teams[${status.index}].position" 		value="${team.position}"  class="position" />
					            <input type="hidden" name="teams[${status.index}].country" 		value="${team.country}" />
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
        		
        		<form:checkbox path="isHeroku" value ="heroku"></form:checkbox> Simulation in Heroku <br>
        		Which Group stage you wanna simulate?<br>
        		<form:radiobutton path="preProcessed" value="none"/> Current
				<form:radiobutton path="preProcessed" value="topAB"/> Pot 1 and 2
				<form:radiobutton path="preProcessed" value="bestRating"/> Best rated
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
