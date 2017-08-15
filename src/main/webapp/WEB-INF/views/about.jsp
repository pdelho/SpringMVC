<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">

    	<title>Delhoyo Webapp</title>

	    <!-- Bootstrap core CSS -->
	    <link href="/SpringMVCHibernate/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="/SpringMVCHibernate/resources/css/modern-business.css" rel="stylesheet">
	    
	    
	    <!-- Bootstrap core JavaScript -->
	    <script src="/SpringMVCHibernate/resources/vendor/jquery/jquery.min.js"></script>
	    <script src="/SpringMVCHibernate/resources/vendor/popper/popper.min.js"></script>
	    <script src="/SpringMVCHibernate/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

</head>



<body>
	
	<!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="<spring:url value ="/"/>">DelHoyo Webpage</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="<spring:url value ="/about"/>">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<spring:url value ="/contact"/>">Contact</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Groefnia
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <!-- <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a> -->
                        <a class="dropdown-item" href="<spring:url value ="/translate-groefnish"/>">Groefnish Translate</a>
                        <a class="dropdown-item" href="<spring:url value ="/persons"/>">List of citizens</a>
                        <!-- <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a> -->
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Other Pages
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                        <a class="dropdown-item" href="https://github.com/pdelho/">GitHub</a>
                        <a class="dropdown-item" href="https://www.hackerrank.com/pablodelhoyo">HackerRank</a>
                        <a class="dropdown-item" href="https://blackrockdigital.github.io/startbootstrap-modern-business">Website template</a>
                        <!-- <a class="dropdown-item" href="404.html">404</a>
                        <a class="dropdown-item" href="pricing.html">Pricing Table</a> -->
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">About Page <small>TBD</small></h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a  href="<spring:url value ="/"/>">Home</a>
            </li>
            <li class="breadcrumb-item active">About</li>
        </ol>

        <!-- Intro Content -->
        <div class="row">
            <div class="col-lg-6">
                <img class="img-fluid rounded mb-4" src="http://placehold.it/750x450" alt="">
            </div>
            <div class="col-lg-6">
                <h2>About Modern Business</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, magni, aperiam vitae illum voluptatum aut sequi impedit non velit ab ea pariatur sint quidem corporis eveniet. Odit, temporibus reprehenderit dolorum!</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et, consequuntur, modi mollitia corporis ipsa voluptate corrupti eum ratione ex ea praesentium quibusdam? Aut, in eum facere corrupti necessitatibus perspiciatis quis?</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Team Members -->
        <h2>Our Team</h2>

        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card h-100 text-center">
                    <img class="card-img-top" src="http://placehold.it/750x450" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Team Member</h4>
                        <h6 class="card-subtitle mb-2 text-muted">Position</h6>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
                    </div>
                    <div class="card-footer">
                        <a href="#">name@example.com</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100 text-center">
                    <img class="card-img-top" src="http://placehold.it/750x450" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Team Member</h4>
                        <h6 class="card-subtitle mb-2 text-muted">Position</h6>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
                    </div>
                    <div class="card-footer">
                        <a href="#">name@example.com</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100 text-center">
                    <img class="card-img-top" src="http://placehold.it/750x450" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Team Member</h4>
                        <h6 class="card-subtitle mb-2 text-muted">Position</h6>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
                    </div>
                    <div class="card-footer">
                        <a href="#">name@example.com</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Our Customers -->
        <h2>Our Customers</h2>
        <div class="row">
            <div class="col-lg-2 col-sm-4 mb-4">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
            </div>
            <div class="col-lg-2 col-sm-4 mb-4">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
            </div>
            <div class="col-lg-2 col-sm-4 mb-4">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
            </div>
            <div class="col-lg-2 col-sm-4 mb-4">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
            </div>
            <div class="col-lg-2 col-sm-4 mb-4">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
            </div>
            <div class="col-lg-2 col-sm-4 mb-4">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
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