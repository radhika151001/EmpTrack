<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #121212;
        color: #e0e0e0;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #1e1e1e;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        width: 400px;
        box-sizing: border-box;
    }

    h1 {
        text-align: center;
        color: #bb86fc;
        font-size: 26px;
        margin-bottom: 25px;
    }

    label {
        display: block;
        text-align: left;
        margin-bottom: 8px;
        font-size: 14px;
        color: #e0e0e0;
    }

    input[type="text"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #424242;
        border-radius: 5px;
        font-size: 14px;
        box-sizing: border-box;
        background-color: #2c2c2c;
        color: #e0e0e0;
    }

    input[type="text"]:focus {
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
        display: block;
        text-align: center;
        margin-top: 20px;
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
    <form action="save">
        <h1>Register Page</h1>

        <label for="eid">EID:</label>
        <input type="text" id="eid" name="eid"><br>

        <label for="ename">ENAME:</label>
        <input type="text" id="ename" name="ename"><br>

        <label for="salary">SALARY:</label>
        <input type="text" id="salary" name="salary"><br>

        <label for="email">EMAIL:</label>
        <input type="text" id="email" name="email"><br>

        <label for="username">USERNAME:</label>
        <input type="text" id="username" name="username"><br>

        <label for="password">PASSWORD:</label>
        <input type="text" id="password" name="password"><br><br>

        <input type="submit" value="REGISTER">
        
    </form>
</body>
</html>
