<%@ page import="java.util.List, schoolmanagemententity.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body { background-color: #f4f6f9; font-family: Arial, sans-serif; }
.page-container { max-width: 1100px; margin: 40px auto; background: #fff; padding: 25px; border-radius: 10px; box-shadow: 0 10px 25px rgba(0,0,0,0.15);}
.page-title { color: #1a237e; margin-bottom: 25px; text-align: center; }
.sort-box { text-align: right; margin-bottom: 15px; }
.sort-box form { display: inline; }
</style>
</head>
<body>
<div class="page-container">

    <h1 class="page-title">All Students</h1>

    <div class="sort-box">
        <form action="sortstudents" method="get">
            <input type="hidden" name="sortBy" value="age">
            <input type="hidden" name="order" value="asc">
            <button class="btn btn-outline-primary btn-sm">Sort by Age</button>
        </form>
        <form action="sortstudents" method="get">
            <input type="hidden" name="sortBy" value="name">
            <input type="hidden" name="order" value="asc">
            <button class="btn btn-outline-secondary btn-sm">Sort by Name</button>
        </form>
    </div>

    <table class="table table-bordered table-hover text-center align-middle">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
            </tr>
        </thead>
        <tbody>
        <%
            List<Student> li = (List<Student>) request.getAttribute("allStudents");
            if (li != null) {
                for (Student s : li) {
        %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getAge() %></td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
