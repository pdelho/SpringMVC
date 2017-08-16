<%@ include file="/WEB-INF/views/include.jsp"%>
<html>

<head>
	
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">

    	<title>Delhoyo Webapp</title>

	    <!-- Bootstrap core CSS -->
	    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="/resources/css/modern-business.css" rel="stylesheet">
	    
	    
	    <!-- Bootstrap core JavaScript -->
	    <script src="/resources/vendor/jquery/jquery.min.js"></script>
	    <script src="/resources/vendor/popper/popper.min.js"></script>
	    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

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
                    <a class="nav-link" href="<spring:url value ="/about"/>">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<spring:url value ="/contact"/>">Contact</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Groefnia
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <!-- <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a> -->
                        <a class="dropdown-item active" href="<spring:url value ="/translate-groefnish"/>">Groefnish Translate</a>
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
        <h1 class="mt-4 mb-3">Translate <small>Groefnish</small></h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a  href="<spring:url value ="/"/>">Home</a>
            </li>
            <li class="breadcrumb-item active">Groefnish Translator</li>
        </ol>

        <!-- Intro Content -->
        <div class="row">
            <div class="col-lg-6">
                <form action="translation" method="post">
                <textarea rows="4" cols="50" name="translation"></textarea>
				<input type="submit" class="btn btn-primary" value="Translate something to Groefnish!">
				</form>
				
            </div>
            <div class="col-lg-6">
                <h2>About Gorefnish</h2>
                <p>Groefnish is a easy (but secret!) language to learn.</p>
                <p>To write it properly, include the particle 'nuf' after any vowel of a word</p>
                <p>Example: hello - he<b>nuf</b>llo<b>nuf</b></p>
                <p>The language you translate the word from is not importan, oke? This is just Gorefnish!</p>
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
