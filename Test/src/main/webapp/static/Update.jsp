<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>-->
<!DOCTYPE html >
<html lang="en">
<% String id=request.getParameter("edit_id");
%>
<head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" href="bootstrap.css">
  <script src="bootstrap.min.css"></script>
  <script src="bootstrap.min.js"></script>
  
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->

		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="static/bootstrap.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>profile</title>
	</head>
<script>
var hrf=window.location.href.substr(0,window.location.href.lastIndexOf("/static"));
 $(document).ready(function() 
{
	 //alert(55)
	var titleid=document.getElementById("editid").value;

	 if(!(titleid=="new") ||titleid=="null") {
		 //alert(5)
			$.getJSON(hrf+'/retrieve?id='+titleid, function(data) {
				
				$.each(data, function(i,f){
					//alert(f.first_name)
					  document.getElementById("title").value=f.title;
				     document.getElementById("director").value=f.director;
					 
					});

			     	});

			
			
	 }
//alert(regid);

}); 
//alert(1)
 var hrf=window.location.href.substr(0,window.location.href.lastIndexOf("/static"));
 //alert(hrf)
 function update()
 {
	//alert(1)
	 	var id=document.getElementById("editid").value;
 	//alert(1)
 	var title=document.getElementById("title").value;
 	//alert(firstname)
 	var director=document.getElementById("director").value;
 		
 	var postData="editid="+id+
 				"&ttl="+title+
 				"&dirc="+director+
 				
 	$.ajax({
 		url :hrf+"/test_update",
 		type: "POST",
 		data :postData ,
 		success:function(data, textStatus, jqXHR) 
 		{	
 		alert(data);		      			   
 		},
 		error: function(jqXHR, textStatus, errorThrown) 
 		{	
 			alert(data); 
 		}
 		});//ajax

 }
</script>

 <body>
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
			
				<h5><h5>
					<form>
						
                    <input type="hidden" value='<%= id %>' name="editid" id="editid">

						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Title</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="title" id="title"  placeholder="Enter your title Name"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Director</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="director" id="director"  placeholder="Enter Director Name"/>
								</div>
							</div>
						</div>


						
						<div class="form-group ">
							<!--  <a href="http://deepak646.blogspot.in" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>-->
							<!-- <button type="button" class="btn btn-primary btn-lg btn-block login-button" onclick="javascript:return update()">SUBMIT</button>-->
							<a href="MainPage.html" class="btn btn-primary btn-lg btn-block login-button" role="button" onClick=" update()">SUBMIT</a>
						</div>
						
					</form>
				</div>
			</div>
		</div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   <!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body> 
</html>