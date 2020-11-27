<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false"%>
<%@page import="java.io.*,java.util.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.centsad.entity.Reviews" %>
<!DOCTYPE html>
<html>
<head>
<title> 99 Cents Ad </title>
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
           <%
  			      	String user = (String)request.getSession().getAttribute("user");
           			int id = (int)request.getSession().getAttribute("id");
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
  			        <form:hidden path="id" />
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
		<%	
			List<Reviews> theReview = (List<Reviews>)request.getSession().getAttribute("reviewCustomer");		
			System.out.println(theReview.size());
			for (int i = 0; i < theReview.size(); i++){	
				
		%>
			<div class="row pt-5">
				<div class="col-lg-4 col-md-4 col-12">
					<div class="card" style="width:18em; height:15rem;">
						<div class="card-body">
							<h5 class="card-title font-weight-bold"><%= theReview.get(i).getName() %></h5>
							<hr class="w-40 mx-auto">
				  			<p class="card-text pt-2"><%= theReview.get(i).getReviews() %></p>
						</div>
					</div>
				</div>
				<%				
					i = i+1;
					if(i < theReview.size()){
				
				%>
				<div class="col-lg-4 col-md-4 col-12">
					<div class="card" style="width:18em; height:15rem;">
						<div class="card-body">
							<h5 class="card-title font-weight-bold"><%= theReview.get(i).getName() %></h5>
							<hr class="w-40 mx-auto">
				  			<p class="card-text pt-2"><%= theReview.get(i).getReviews() %></p>
						</div>
					</div>
				</div>
				<% 
						i=i+1;
						if(i<theReview.size()){
				%>
				<div class="col-lg-4 col-md-4 col-12">
					<div class="card" style="width:18em; height:15rem;">
						<div class="card-body">
							<h5 class="card-title font-weight-bold"><%= theReview.get(i).getName() %></h5>
							<hr class="w-40 mx-auto">
				  			<p class="card-text pt-2"><%= theReview.get(i).getReviews() %></p>
						</div>
					</div>
				</div>
				<%	
					} else{
						//render nothing
					}
					}else{
						//render nothing
					}
				%>
			</div>
				<%	
					}
				%>
		</div>
	
	
	<div class="container">
		<form:form action="addReview" modelAttribute="review" method="POST">
		
  					  <div class="form-group">
  					    <form:label path="name" for="name">Name</form:label>
  					    <form:input type="text" path="name" class="form-control" name="name" id="name" placeholder="Enter name" />
  					  </div>
  					  <div class="form-group">
  					    <form:label path="reviews" for="reviews">Reviews</form:label>
  					    <form:input type="textarea" path="reviews" class="form-control" id="reviews" placeholder="Enter review" />
  					  </div>
  					  
  					  <button type="submit" class="btn btn-primary">Submit</button>
  		</form:form>
	
	</div>


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
</body>
</html>