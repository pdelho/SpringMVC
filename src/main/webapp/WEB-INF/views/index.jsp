<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>

	<title>Delhoyo Webapp</title>
	<!-- META JS and CSS -->
	<%@ include file="/WEB-INF/views/common/metajscss.jsp"%>

</head>



<body>
	
	<!-- Navigation --> 
    <%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
 <header>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <!-- Slide One - Set the background image for this slide in the line below -->
                <div class="carousel-item active" style="background-image: url('<%=request.getContextPath()%>/resources/images/groefnia_1.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Groefnia</h3>
                        <p>Capital of the Balkans</p>
                    </div>
                </div>
                <!-- Slide Two - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('<%=request.getContextPath()%>/resources/images/groefnia_2.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 style="backcolor:#000000">Land for ships</h3>
                        <p style="color:#FFFFFF">Buenos, bonitos, pero no baratos</p>
                    </div>
                </div>
                <!-- Slide Three - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('<%=request.getContextPath()%>/resources/images/groefnia_3.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 style="color:#000000">Learn Programming</h3>
                        <p style="color:#000000">SpringMVC, frontend, Postgresql...</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <h1 class="my-4">Welcome to DelHoyo webpage!</h1>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Groefnia</h4>
                    <div class="card-body">
                        <p class="card-text">This amazing <del>imaginary</del> European country is situated in the heart of the Balkan.
                        Groefnia has plenty of fantastic attractions and unique sights to offer.
                        Its peopleS are very kind and hospitable with everybody. Well, maybe not with Spaniards. 
                        But we enjoy the Fridays because here it's always Friday. See the projects and help us the make Groefnia great for once!</p>
                    </div>
                    <div class="card-footer">
                        <a href="<spring:url value ="/translate-groefnish"/>" class="btn btn-primary">Learn Groefnish now!</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Programming</h4>
                    <div class="card-body">
                        <p class="card-text">I'm developing this website just for fun. Don't take it seriously. But is a funny way to learn programming: front-end, back-end, databases... You have the repository in my GitHub, feel free to copy it!</p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Contact</h4>
                    <div class="card-body">
                        <p class="card-text">You can send me your doubts in the contact section. Your comments are welcomed as well!
                        For any official issue you should contact the Groefnia embassy</p>
                    </div>
                    <div class="card-footer">
                        <a href="<spring:url value ="/contact"/>" class="btn btn-primary">Contact</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <h2>What are we proud of</h2>

        <div class="row">
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/airport.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">The Airport</a></h4>
                        <p class="card-text">So far our airport has no planes, but it's beautiful. We are trying hard with Ryanair
                        so that they schedule some cheap flights, connecting Groefcelona with Amsterdam, Düsseldorf and Brussels Zaventem in high season for just 65 euros!!!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/harbour.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">The Harbour</a></h4>
                        <p class="card-text">We like very much the barcos, joder!. If you don't have one maybe you should buy it here. Our harbour it's the best storefront for the most 
                        awesome and expensive ships in the world!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/eurovision.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Eurovision and Sports</a></h4>
                        <p class="card-text">The whole country stops for the most important event of the year. We have won Eurovison 5 times and we are proud of it
                        Our Groefcelona football club also have won 1 Europe League</p>
                    </div>
                </div>
            </div>
            
            
            
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-6">
                <h2>Modern Business Features</h2>
                <p>The Modern Business template by Start Bootstrap includes:</p>
                <ul>
                    <li><strong>Bootstrap v4</strong>
                    </li>
                    <li>jQuery</li>
                    <li>Font Awesome</li>
                    <li>Working contact form with validation</li>
                    <li>Unstyled page elements for easy customization</li>
                </ul>
                <p>Consult this template in the Other Pages section</p>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="http://placehold.it/700x450" alt="">
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="row mb-4">
            <div class="col-md-8">
                <p>This webpage was built using SpringMVC</p>
            </div>
            <div class="col-md-4">
                <a class="btn btn-lg btn-secondary btn-block" href="#">Call to Action</a>
            </div>
        </div>

    </div>
    
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
        <P class="m-0 text-center text-white">The time on the server is ${serverTime}<br></P>
        <p class="m-0 text-center text-white">2017</p>
        </div>
    </footer>
</body>
</html>
