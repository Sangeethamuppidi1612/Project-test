<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" href="bootstrap.css">
  <script src="bootstrap.min.css"></script>
  <script src="bootstrap.min.js"></script>
<title>Home</title>
</head>
<body>
<h4 class="form-header"></h4>
<div id="somediv">
</div>

<table align="center" id="table" class="table table-bordered" style= "width:60%; background-color: #808080; color:white ";>
	<!-- <caption>User Details
	</caption> -->
	<!-- <colgroup /> -->
	<!-- <colgroup span="2" title="title" /> -->
	<thead style="background-color: #000000";>
		<tr>
		    <th>Id</th>
			<th>Title</th>
			<th>Director</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	</thead>
	
	<tbody id="tbody">
		
	</tbody>
</table>
</body>

 <script>

 $(document).ready(function() {
	 
	  $.getJSON('http://localhost:8080/list', function(data) {
		
		 $.each(data,function(i,f){
			 var tr="<tr><td>"+f.id+"</td><td>" +f.title+"</td><td>" +f.director+"</td><td class='center' style='color:black'> </td></tr>"
		   	 $('#table').append(tr); 		 
		 });
	    
	  });
	 
	});
 /* function edit(id)
 {
   $('<form action="static/edit.jsp"><input type="text" value="'+id+'" id="edit_id" name="edit_id"></form>').appendTo('body').submit();
  // session.setAttribute("userId", id);
 }
 function trdelete(id)
 {
	 alert(id)
	 $.getJSON('http://localhost:8080/data_delete?id='+id, function(data) {
			
			$.each(data, function(i,f){
				//alert(f.first_name)
				 $('<form action="home.jsp"></form>').appendTo('body').submit();
			

		     	});
 });
 }
 */ </script>
</body>
</html>