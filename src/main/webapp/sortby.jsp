
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sort Users</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f1f3f6;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .sort-container {
        background: white;
        padding: 25px 30px;
        width: 320px;
        border-radius: 8px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        border-top: 5px solid #17a2b8;
    }

    h2 {
        text-align: center;
        color: #17a2b8;
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

    select {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
    }

    select:focus {
        border-color: #17a2b8;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #17a2b8;
        border: none;
        color: white;
        font-size: 15px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background-color: #138496;
    }
</style>

</head>
<body>

<div class="sort-container">
    <h2>Sort Users</h2>

    <form action="sort" method="get">

        <div class="form-group">
            <label>Sort By</label>
            <select name="sortBy">
                <option value="age">Age</option>
                <option value="name">Name</option>
            </select>
        </div>

        <div class="form-group">
            <label>Order</label>
            <select name="order">
                <option value="asc">Ascending</option>
                <option value="desc">Descending</option>
            </select>
        </div>

        <input type="submit" value="SORT">
    </form>
</div>

</body>
</html>
