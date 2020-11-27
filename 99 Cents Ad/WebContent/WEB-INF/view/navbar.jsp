<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
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
