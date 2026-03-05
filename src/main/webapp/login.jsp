<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(120deg, #2c3e50, #4ca1af);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        background: white;
        padding: 30px 35px;
        width: 340px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        text-align: center;
    }

    h1 {
        font-size: 18px;
        color: #2c3e50;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
        text-align: left;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 9px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #4ca1af;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #2c3e50;
        border: none;
        color: white;
        font-size: 15px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background-color: #1a252f;
    }
</style>

</head>
<body>

<%
    String user = request.getParameter("username");
%>

<div class="login-container">
    <h1>WELCOME <%= user %> ADMIN !!!</h1>

    <form action="login" method="post">

        <div class="form-group">
            <label>User</label>
            <input type="text" name="user" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <input type="submit" value="LOGIN">
    </form>
</div>

</body>
</html>


