<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Registration</title>

<style>
* {
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Form Card */
form {
    background: #ffffff;
    width: 380px;
    padding: 30px 35px;
    border-radius: 12px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #2d3748;
}

/* Form Group */
.form-group {
    margin-bottom: 15px;
}

/* Labels */
label {
    display: block;
    margin-bottom: 6px;
    font-size: 14px;
    font-weight: 600;
    color: #2d3748;
}

/* Inputs */
input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px 12px;
    border-radius: 6px;
    border: 1px solid #cbd5e0;
    font-size: 14px;
    outline: none;
    transition: border-color 0.3s, box-shadow 0.3s;
}

input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 2px rgba(102, 126, 234, 0.2);
}

/* Submit Button */
input[type="submit"] {
    width: 100%;
    margin-top: 10px;
    padding: 12px;
    background: #667eea;
    border: none;
    color: white;
    font-size: 16px;
    font-weight: 600;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

input[type="submit"]:hover {
    background: #5a67d8;
    transform: translateY(-1px);
}
</style>

</head>
<body>

<form action="adminregister" method="get">

    <h2>Admin Registration</h2>

    <div class="form-group">
        <label>First Name</label>
        <input type="text" name="fname" required>
    </div>

    <div class="form-group">
        <label>Username</label>
        <input type="text" name="uname" required>
    </div>

    <div class="form-group">
        <label>Email</label>
        <input type="text" name="email" required>
    </div>

    <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" required>
    </div>

    <div class="form-group">
        <label>Confirm Password</label>
        <input type="password" name="confirmpassword" required>
    </div>

    <div class="form-group">
        <label>Phone No</label>
        <input type="text" name="phoneno" required>
    </div>

    <input type="submit" value="Register">

</form>

</body>
</html>


