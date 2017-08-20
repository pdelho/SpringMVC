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
                <h3>The text you wanted to translate:</h3>
                ${textToBeTranslated}
				<h3>The text in Groefnish:</h3>
				${textTranslated}<br>
				jklfjadls;kf	
            </div>
            <div class="col-lg-6">
                <h2>About Groefnish</h2>
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
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
    
</body>
</html>



	

