<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>

	<title>Pablo del Hoyo - Software Developer</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>
	
	  <!-- Bootstrap -->
		<%-- <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/resources/css/bootstrap.css"> --%>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/fonts/font-awesome/css/font-awesome.css">
		
		<!-- Stylesheet  ================================================== -->
		<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/resources/css/style.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/prettyPhoto.css">
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
		
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.1.11.1.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/SmoothScroll.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/easypiechart.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.prettyPhoto.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.isotope.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.counterup.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/waypoints.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jqBootstrapValidation.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/contact_me.js"></script> 
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/main.js"></script>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

	<!-- Navigation --> 
    <%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
	<!-- Header -->
	<header id="header">
	  <div class="intro">
	    <div class="container">
	      <div class="row">
	        <div class="intro-text">
	          <h1>Hello, I'm <span class="name">Pablo del Hoyo</span></h1>
	          <p>Software Full-Stack Engineer</p>
	          <a href="#about" class="btn btn-default btn-lg page-scroll">Learn More</a> </div>
	      </div>
	    </div>
	  </div>
	</header>
	
    <!-- Navigation 2 TBD -->
	
	<div id="about">
	  <div class="container">
	    <div class="section-title text-center center">
	      <h2>About Me</h2>
	      <hr>
	    </div>
	    <div class="row">
	      <div class="col-md-12 text-center"><img src="<%=request.getContextPath()%>/resources/images/cv/profile_picture.png" class="img-responsive"></div>
	      
	        <div class="about-text">
	        	<p>IT Professional and Telecommunication Engineer. Software Full-Stack Developer. Experience in programming languages and engineering tools. Proactive towards problem-solving</p>
	          <p class="text-center"><a class="btn btn-primary" href="#"><i class="fa fa-download"></i> Download Resume</a></p>
	        </div>
	      
	    </div>
	  </div>
	</div>
	
	<!-- Skills Section -->
	<div id="skills" class="text-center">
	  <div class="container">
	    <div class="section-title center">
	      <h2>FrontEnd</h2>
	      <hr>
	    </div>
	    <div class="row">
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="35"> <span class="percent">35</span> </span>
	        <h4>HTML5</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="25"> <span class="percent">25</span> </span>
	        <h4>CSS3</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="40"> <span class="percent">40</span> </span>
	        <h4>JavaScript</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="50"> <span class="percent">50</span> </span>
	        <h4>jQuery</h4>
	      	</div>
	  	    <div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="10"> <span class="percent">10</span> </span>
	        <h4>Bootstrap</h4>
	     	</div>
	     </div>
		</div>
	</div>
	<div id="skills" class="text-center">
	  <div class="container">
	     <div class="section-title center">
		      <h2>BackEnd</h2>
		      <hr>
		    </div>
		    <div class="row">
	   	  	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="60"> <span class="percent">60</span> </span>
	        <h4>Java</h4>
	      	</div>
		    <div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="50"> <span class="percent">50</span> </span>
	        <h4>Spring</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="50"> <span class="percent">50</span> </span>
	        <h4>MVC</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="40"> <span class="percent">40</span> </span>
	        <h4>JSP</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="30"> <span class="percent">30</span> </span>
	        <h4>maven</h4>
	      	</div>
	 	</div>
	 	<div class="section-title center">
	      <h2>Databases</h2>
	      <hr>
	    </div>
	    <div class="row">
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="10"> <span class="percent">10</span> </span>
	        <h4>JPA</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="10"> <span class="percent">10</span> </span>
	        <h4>Hibernate</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="30"> <span class="percent">30</span> </span>
	        <h4>Postgresql</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="40"> <span class="percent">40</span> </span>
	        <h4>MySQL</h4>
	       	</div>
	    </div>
	    <div class="section-title center">
	      <h2>Software Versioning</h2>
	      <hr>
	    </div>
	    <div class="row">
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="50"> <span class="percent">50</span> </span>
	        <h4>git</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="20"> <span class="percent">20</span> </span>
	        <h4>subversion</h4>
	      	</div>
	    </div>
	    <div class="section-title center">
	      <h2>Others</h2>
	      <hr>
	    </div>
	    <div class="row">
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="10"> <span class="percent">10</span> </span>
	        <h4>C</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="30"> <span class="percent">30</span> </span>
	        <h4>Matlab</h4>
	      	</div>
	      	<div class="col-md-4 col-sm-6 skill"> <span class="chart" data-percent="20"> <span class="percent">20</span> </span>
	        <h4>Shell Scripting</h4>
	      	</div>
	    </div>    
	  </div>
	</div>
	
	
	
	<!-- Achievements Section -->
	<div id="achievements" class="text-center">
	  <div class="container">
	    <div class="section-title center">
	      <h2>Some Stats</h2>
	      <hr>
	    </div>
	    <div class="row">
	      <div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="200ms">
	        <div class="achievement-box"> <span class="count">3</span>
	          <h4>Companies</h4>
	        </div>
	      </div>
	      <div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="400ms">
	        <div class="achievement-box"> <span class="count">1000</span>
	          <h4>Hours of Work</h4>
	        </div>
	      </div>
	      <div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="600ms">
	        <div class="achievement-box"> <span class="count">4</span>
	          <h4>Projects</h4>
	        </div>
	      </div>
	      <div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="800ms">
	        <div class="achievement-box"> <span class="count">1</span>
	          <h4>Years of Experience</h4>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	
	<!-- Resume Section -->
	<div id="resume" class="text-center">
	  <div class="container">
	    <div class="section-title center">
	      <h2>Experience</h2>
	      <hr>
	    </div>
	    <div class="row">
	      <div class="col-lg-12">
	        <ul class="timeline">
	          <li>
	            <div class="timeline-image">
	              <h4>Jun 2017 <br>
	                - <br>
	                Present </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>VASS - Madrid</h4>
	                <h4 class="subheading">Software developer in SAP Hybris</h4>
	              </div>
	              <div class="timeline-body">
	                <p>Technologies: Java, SAP Hybris, git</p>
	                <p>Fullstack development in a  <a href= "http://www.vass.es/actualidad/nuevo-canal-e-commerce-b2b-para-dia">B2B Project</a></p>
	              </div>
	            </div>
	          </li>
	          <li class="timeline-inverted">
	            <div class="timeline-image">
	              <h4>Nov 2016 <br>
	                - <br>
	                Mar 2016 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>myCloudDoor - Madrid</h4>
	                <h4 class="subheading">Software and Testing Analyst in SAP Hybris</h4>
	              </div>
	              <div class="timeline-body">
	                <p>Technologies: Java, SAP Hybris, JIRA, git, subversion</p>
	                <p>Responsibilities: documentation, client project requirements, testing tasks</p>
	              </div>
	            </div>
	          </li>
	          <li>
	            <div class="timeline-image">
	              <h4>Mar 2015 <br>
	                - <br>
	                Aug 2015 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>ADVVAL - Madrid</h4>
	                <h4 class="subheading">Data Analyst Engineers</h4>
	              </div>
	              <div class="timeline-body">
	                <p>Technologies: PLSQL, MySQL, MS Excel</p>
	                <p>Responsibilities: database analyst, list generation for a call centre of a Belgian Telecom (Telenet), post-analysis of the campaign effectiveness</p>
	              </div>
	            </div>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </div>
	  
	  <div class="container">
	    <div class="section-title center">
	      <h2>Education</h2>
	      <hr>
	    </div>
	    <div class="row">
	      <div class="col-lg-12">
	        <ul class="timeline">
	          
	          <!-- Education Section-->
	          
	          <li>
	            <div class="timeline-image">
	              <h4>Feb 2016 <br>
	                - <br>
	                Sep 2016 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>Technische Universität Hamburg-Harburg</h4>
	                <h4 class="subheading">Master Thesis</h4>
	              </div>
	              <div class="timeline-body">
	                <p>Development of a GUI for localizing devices in indoor environments using UWB radios</p>
	                <p><a href = "https://github.com/pdelho/master_thesis/blob/master/tfm.pdf">Project git</a></p>
	              </div>
	            </div>
	          </li>
	          <li class="timeline-inverted">
	            <div class="timeline-image">
	              <h4>Sep 2015 <br>
	                - <br>
	                Jan 2016 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>Technische Universität Hamburg-Harburg</h4>
	                <h4 class="subheading">M. Sc. Information and Communication Systems</h4>
	              </div>
	              <div class="timeline-body">
	                <p>Average Mark: 8.8/10. GPA: 3.3</p>
	              </div>
	            </div>
	          </li>
	          <li>
	            <div class="timeline-image">
	              <h4>Sep 2014 <br>
	                - <br>
	                Sep 2015 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>Universidad Politécnica de Madrid</h4>
	                <h4 class="subheading">Máster Universitario en Ingeniería de Telecomunicación</h4>
	              </div>
	              <div class="timeline-body">
	                <p class="text-muted">Average mark: 7,68/10 (GPA: 3,28)</p>
	              </div>
	            </div>
	          </li>
	          
	          <li class="timeline-inverted">
	            <div class="timeline-image">
	              <h4>Sep 2014 <br>
	                - <br>
	                Sep 2015 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>Universidad Politécnica de Madrid</h4>
	                <h4 class="subheading">Bachelor Thesis</h4>
	              </div>
	              <div class="timeline-body">
	                <p class="text-muted">Development, implementation and verification of the ADCS of the UPMSat-2 Satellite</p>
	                <p><a href = "http://www.dit.upm.es/str/proyectos/upmsat2/doc/TFG_Pablo_del_Hoyo.pdf">Document</a></p>
	              </div>
	            </div>
	          </li>
	          
	          <li>
	            <div class="timeline-image">
	              <h4>Sep 2010 <br>
	                - <br>
	                Jun 2014 </h4>
	            </div>
	            <div class="timeline-panel">
	              <div class="timeline-heading">
	                <h4>Universidad Politécnica de Madrid</h4>
	                <h4 class="subheading">Bachelor Degree</h4>
	              </div>
	              <div class="timeline-body">
	                <p class="text-muted">Average mark: 7,01/10 (GPA: 3,08)</p>
	              </div>
	            </div>
	          </li>
	          
	        </ul>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- Contact Section -->
	<div id="contact" class="text-center">
	  <div class="container">
	    <div class="section-title center">
	      <h2>Contact</h2>
	       <i class="fa fa-envelope-o fa-2x"></i> info@company.com 
	       <i class="fa fa-map-marker fa-2x"></i> Madrid,Spain
	       <i class="fa fa-phone fa-2x"></i> +1 123 456 1234
	       	
      	</div>
	      

	      <div class="clearfix"></div>
	     <h3>Leave me a message <a href="<spring:url value ="/contact"/>">here</a></h3>
	    </div>
	    
	      <div class="social">
	        <ul>
	          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
	          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
	          <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
	          <li><a href="https://github.com/pdelho/"><i class="fa fa-github"></i></a></li>
	          <li><a href="#"><i class="fa fa-instagram"></i></a></li>
	          <li><a href="https://www.linkedin.com/in/pablodelhoyo/"><i class="fa fa-linkedin"></i></a></li>
	        </ul>
	      </div>
	    
	  </div>
	
	<!-- Footer -->
	<div id="footer">
	  <div class="container text-center">
	    <div class="fnav">
	      <p>Copyright &copy; 2016 John Doe. Designed by <a href="http://www.templatewire.com" rel="nofollow">TemplateWire</a></p>
	    </div>
	  </div>
	</div>
	
</body>
</html>
    