<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
<h1>Register</h1>
<form action="RegisterServlet" method="post">
<label for="username">Username:</label>
<input type="text" id="username" name="username" required><br>
<label for="email">Email:</label>
<input type="text" id="username" name="email" required><br>
<label for="password">password:</label>
<input type="password" id="password" name="password" required><br>
<button type="submit">Login</button>
<p><a href="index.html">Back To Home</a>
</p>
</form>

</div>

</body>
</html>