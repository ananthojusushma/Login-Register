<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.http.HttpSession"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
<% 
//retrive the session object
HttpSession session1=request.getSession(false);
//check if the session is not null and the username is set
if(session1 !=null && session1.getAttribute("username")!=null){
	//get the username from the session

	String username=(String)session.getAttribute("username");

%>
	<div class="container">
<h1>Welcome !<%=username %></h1>
<p>We're delighted to have you join us</p>
<h3>Please feel free to expolre,learn and connect with our vibrant community</h3>
<p>Stay as long as you like,and when you're ready,you can securely </p><a href="logout.jsp">LOGOUT</a> Thank you for being here!
	</div>
	
	<%
	}
	else{
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>