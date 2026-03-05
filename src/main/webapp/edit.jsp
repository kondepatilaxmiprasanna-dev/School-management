<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #eef2f7;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .edit-container {
        background: white;
        padding: 25px 30px;
        width: 320px;
        border-radius: 8px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        border-top: 5px solid #007bff;
    }

    h2 {
        text-align: center;
        color: #007bff;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
    }

    input[type="text"]:focus {
        border-color: #007bff;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        color: white;
        font-size: 15px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<div class="edit-container">
    <h2>Edit User</h2>

    <form action="edit" method="post">

        <div class="form-group">
            <label>ID</label>
            <input type="text" name="id" required>
        </div>

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Age</label>
            <input type="text" name="age" required>
        </div>

        <input type="submit" value="EDIT">
    </form>
</div>

</body>
</html>
