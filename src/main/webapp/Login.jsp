<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
	body{
		font-family: Arial, sans-serif;
	}
	.container{
		max-width:500px;
		padding:30px;
		border: 1px solid #ccc;
		box-shadow: 0 0 100px rgb(54, 150, 255, 0.35);
		margin: 200px auto;
		border-radius: 5px;
	}
	label{
		display:block;
		margin-bottom:5px;
	}
	#username {
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
    }
    #password {
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
    }
    input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
    }     
</style>
</head>
<body>
	<div class="container">
	<h1 style="text-align:center;">Quiz App</h1>
	<form id="login" name="login" method="GET" action="Question.jsp">
		<label for="username">Username: </label>
		<input type="text" id="username" name="username" placeholder="Enter your username">
		<label for="password">Password: </label>
		<input type="password" id="password" name="password" placeholder="Enter your password">
		<input type="submit" value="Login">
	</form>
	</div>
</body>
</html>