<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false"%>
<%@page import="java.io.*,java.util.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
  <title> 99 Cents Ad </title>
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--animate.css using  -->
	<link
	    rel="stylesheet"
	    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
	  />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/resources/css/styles.css"
    rel="stylesheet">
    <!--Fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=PT+Serif&display=swap" rel="stylesheet">
</head>
<body>


	
  <div class = "side_nav">

    <a href="${pageContext.request.contextPath}/frontPage">Home</a>
    <hr id="hrcss">
    <a href="${pageContext.request.contextPath}/services">Services</a>
        <hr id="hrcss">
    <a href="#">Clients</a>
        <hr id="hrcss">
    <a href="${pageContext.request.contextPath}/review">Reviews</a>
        <hr id="hrcss">
    <a href="#">Contact</a>
        <hr id="hrcss">


  </div>

    <div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-inverse ">
      <a class="navbar-brand" href="#">99 Cents Ad</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
        
        
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/frontPage">Home <span class="sr-only">(current)</span></a>
          </li>
           <%
  			      	String user = (String)request.getSession().getAttribute("user");
           			
  			      	if (user == null){
  			      		
  			%>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="modal" data-target="#signIn"> Sign In </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Sign Up
            </a>
            <div class="dropdown-menu bg-dark " aria-labelledby="navbarDropdown">
              <a class="dropdown-item text-white" href="#" data-toggle="modal" data-target="#myModal">Sign Up</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item text-white" href="#">Facebook</a>
              <a class="dropdown-item text-white" href="#">Google</a>
            </div>
            <% } else{
            	
            }
            	%>
            }
          </li>
        </ul>
      </div>
    </nav>
  </div>

		 
  <div class="modal" tabindex="-1" role="dialog" id="myModal">
  			  <div class="modal-dialog" role="document">
  			    <div class="modal-content" >
  			      <div class="modal-header"id = "signupbg" >
  			        <h5 class="modal-title">Sign Up</h5>
  			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
  			          <span aria-hidden="true">&times;</span>
  			        </button>
  			      </div>
  			    
  			      <div class="modal-body">
  			        <form:form action="addCustomer" modelAttribute="customer" method="POST">
  			        <form:hidden path="id"/>
  					  <div class="form-group">
  					    <form:label path="email" for="email">Email address</form:label>
  					    <form:input type="email" path="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email" />
  					    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  					  </div>
  					  <div class="form-group">
  					    <form:label path="password" for="exampleInputPassword1">Password</form:label>
  					    <form:input type="password" path="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
  					  </div>
  					  
  					  <button type="submit" class="btn btn-primary">Submit</button>
  					</form:form>
  			      </div>
  			      <div class="modal-footer" id = "signupbg">
  			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  			      </div>
  			    </div>
  			 </div>
    </div>
    
  <div class="modal" tabindex="-1" role="dialog" id="signIn">
  			  <div class="modal-dialog" role="document">
  			    <div class="modal-content" >
  			      <div class="modal-header"id = "signupbg" >
  			        <h5 class="modal-title">Sign Up</h5>
  			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
  			          <span aria-hidden="true">&times;</span>
  			        </button>
  			      </div>
  			    
  			      <div class="modal-body">
  			        <form:form action="addCustomer" modelAttribute="customer" method="POST">
  					  <div class="form-group">
  					    <form:label path="email" for="email">Email address</form:label>
  					    <form:input type="email" path="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email" />
  					    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  					  </div>
  					  <div class="form-group">
  					    <form:label path="password" for="exampleInputPassword1">Password</form:label>
  					    <form:input type="password" path="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
  					  </div>
  					  
  					  <button type="submit" class="btn btn-primary">Submit</button>
  					</form:form>
  			      </div>
  			      <div class="modal-footer" id = "signupbg">
  			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  			      </div>
  			    </div>
  			 </div>
    </div>
    
  <div class="container">
    <h1 class="heading text-center py-2"> 99 Cents Ad </h1>
    <div id="carouselExampleControls" class="carousel slide animate__animated animate__tada" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="resources/images/image4.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="resources/images/downtown.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="resources/images/image4.jpg" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

  <section>
    <div class="container">
      <h1 class="heading text-center mt-4"> Services </h1>
      <hr class="w-50 mx-auto">
      <div class="cardBox row mb-2 py-3">
        <div class="col-lg-4 col-md-4 col-12">
          <div class="card" style="width: 20rem;">
            <img class="card-img-top" src="resources/images/socialmedia.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Social Media Advertisement</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-12">
          <div class="card" style="width: 20rem;">
            <img class="card-img-top" src="resources/images/digitalad.png"alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Digital Advertisement</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
         <div class="col-lg-4 col-md-4 col-12">
          <div class="card" style="width: 20rem;">
            <img class="card-img-top" src="resources/images/posterad.png"alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Digital Advertisement</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
  	<div class="container">
  		<h1 class="heading text-center mt-4">About Us</h1>
  		<hr class="w-50 mx-auto">
  		<div class="author row my-4 py-3 animate__animated animate__backInLeft">
  			<div class="col-lg-6 col-md-6 col-12 ">
  				<img src="resources/images/laxman.jpg" alt="Laxman Bista" id = "laxmanimg" class="img-fluid">
  			</div>
  			<div class="authorDesc col-lg-6 col-md-6 col-12">
  				<h2 class="text-center"> Laxman Bista </h2>
  				<p> CEO, 99 cents Ad </p>
  				<hr class="w-25 mx-auto">
  				<p> Founder and CEO of 99 Cents Ad. </p>
  			</div>
  		</div>
  		<div class="author row my-4 py-3 animate__animated animate__backInRight">
	  		<div class="authorDesc col-lg-6 col-md-6 col-12 ">
	  				<h2 class="text-center"> Aayush Karki </h2>
	  				<p> CEO, 99 cents Ad </p>
	  				<hr class="w-25 mx-auto">
	  				<p> Founder and CEO of 99 Cents Ad. </p>
	  		</div>
  			<div class="col-lg-6 col-md-6 col-12">
  				<img src="resources/images/ayush.jpg" alt="Aayush Karki" id = "ayushimg" class="img-fluid">
  			</div>
  		</div>
  	</div>
  
  </section>
  
  <div id = "monkey" class="animate__animated animate__rollIn">
    <iframe   src="https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2F99centad%2Fvideos%2F386426598832508%2F&show_text=false&width=560" width="560" height="314" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
  </div>
  
  <section>
  	<div class="container">
  		<h1 class="heading text-center mt-3">Contact Us</h1>
  		<hr class="w-50 mx-auto">
  		<p class="text-center"> If you have any questions regarding the service we provide, you can contact us by filing up the following form.</p>
  		<div class="w-50 mx-auto mb-4">
  		
  		
	  		<form:form action="contactForm" modelAttribute="questions" method="POST">
	  			<div class="form-group">
	  			    <form:label path="firstName">First Name</form:label>
	  			    <form:input type="text" path="firstName" class="form-control" placeholder="First Name" />
	  			 </div> 
	  			 <div class="form-group">
	  			    <form:label path="lastName">Last Name</form:label>
	  			    <form:input type="text" path="LastName" class="form-control" placeholder="Enter Last Name" />
	  			 </div>
	  			 <div class="form-group">
	  			     <form:label path="email" for="exampleInputEmail1">Email address</form:label>
	  				 <form:input type="email" path="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" />
	  				 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	  			  </div>
	  			  <div class="form-group">
	  			  	<form:label path="question">Question For Us</form:label>
	  			  	<form:input type="textarea" path="question" class="form-control" placeholder="Please Enter your questions" />
	  			  </div>
	  			  <button type="submit" class="btn btn-primary">Submit</button>
	  		</form:form>
	  	</div>
  	</div>
  
  </section>
  <footer class="page-footer font-small blue">

    <!-- Copyright -->
    <div class="footer-copyright text-center my-3">© 2020 Copyright:
      Tradingness.com
    </div>
    <!-- Copyright -->

  </footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
	$(function(){
		$('#topNavBar').load('navbar.html');
	});
</script>
</body>
</html>
