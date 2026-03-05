<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f5f6fa;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .delete-container {
        background: white;
        padding: 25px 30px;
        width: 300px;
        border-radius: 8px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        border-top: 5px solid #dc3545;
    }

    h2 {
        text-align: center;
        color: #dc3545;
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
        border-color: #dc3545;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #dc3545;
        border: none;
        color: white;
        font-size: 15px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #c82333;
    }

    .warning {
        font-size: 12px;
        color: #666;
        margin-top: 10px;
        text-align: center;
    }
</style>

</head>
<body>

<div class="delete-container">
    <h2>Delete User</h2>

    <form action="delete" method="get">

        <div class="form-group">
            <label>User ID</label>
            <input type="text" name="id" required>
        </div>

        <input type="submit" value="DELETE">

        <div class="warning">
            ⚠ This action cannot be undone
        </div>
    </form>
</div>

</body>
</html>
