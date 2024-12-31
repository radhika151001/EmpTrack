<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login Success</title> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #121212;
        color: #e0e0e0;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #bb86fc;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #1e1e1e;
        margin: 20px 0;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
    }

    th, td {
        padding: 10px 15px;
        text-align: center;
        border: 1px solid #424242;
    }

    th {
        background-color: #2c2c2c;
        color: #bb86fc;
    }

    td {
        color: #e0e0e0;
    }

    input[type="radio"] {
        accent-color: #bb86fc;
    }
</style>
<script>
    function deleteEmp() {
        document.fn.action = "delete";
        document.fn.submit();
    }
    function editEmp() {
        document.fn.action = "edit";
        document.fn.submit();    
    }
</script>
</head>
<body>
<h1>Login Success</h1>
<form name="fn">
    <table>
        <tr>
            <th>Select</th>
            <th>Eid</th>
            <th>EName</th>
            <th>Salary</th>
            <th>Email</th>
            <th>Username</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach items="${empList}" var="e">
            <tr>
                <td><input type="radio" name="eid" value="${e.eid}"></td>
                <td>${e.eid}</td>
                <td>${e.ename}</td>
                <td>${e.salary}</td>
                <td>${e.email}</td>
                <td>${e.username}</td>
                <td><input type="button" class="btn btn-info" value="edit" onclick="editEmp()"></td>
                <td><input type="button" class="btn btn-danger" value="delete" onclick="deleteEmp()"></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
