<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="javax.servlet.http.HttpSession"%> 
<!DOCTYPE html>
<html>

<body>
<%
HttpSession currentsession=request.getSession(false);
if(currentsession!=null){
	currentsession.invalidate();
}
response.sendRedirect("index.html");


%>

</body>
</html>