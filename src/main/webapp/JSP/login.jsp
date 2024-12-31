<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginForm</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #121212;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: #e0e0e0;
    }

    form {
        background-color: #1e1e1e;
        width: 350px;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        text-align: center;
    }

    h1 {
        margin-bottom: 20px;
        font-size: 26px;
        color: #bb86fc;
    }

    label {
        display: block;
        text-align: left;
        margin-bottom: 8px;
        font-size: 14px;
        color: #e0e0e0;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #424242;
        border-radius: 5px;
        font-size: 14px;
        box-sizing: border-box;
        background-color: #2c2c2c;
        color: #e0e0e0;
    }

    input[type="text"]:focus, input[type="password"]:focus {
        border-color: #bb86fc;
        outline: none;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #bb86fc;
        color: #121212;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        font-weight: bold;
    }

    input[type="submit"]:hover {
        background-color: #9b60f2;
    }

    a {
        display: inline-block;
        margin-top: 15px;
        color: #bb86fc;
        font-size: 14px;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
 
<body>
<form action="loginsuccess" method="get">
    <h1>Login Page</h1>
    <label>Username</label>
    <input type="text" name="username" required><br><br>
    <label>Password</label>
    <input type="password" name="password" required><br><br>
    <input type="submit" value="LOGIN"><br>
    <a href="register">Register Here</a>
    
    
</form>
</body>
</html>
