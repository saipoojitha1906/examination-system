<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="login.css">
  <style>
    label {
      display: block;
      margin-bottom: 5px;
    }
    
    input[type="text"],
    input[type="password"] {
      width: 200px;
      padding: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-bottom: 10px;
    }
    
    input[type="submit"] {
      padding: 10px 20px;
      background-color:rgba(0,31,26,0.36);
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    
    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <script>
  
  </script>
<center><br><br><br><br><br><br>
  <form action=LoginExam method=post onsubmit="return validateForm()">
  <h1>User Login</h1>
    <label for="uname">Username:</label>
    <input type="text" id="uname" name="uname" required>

    <label for="pwd">Password:</label>
    <input type="password" id="pwd" name="pwd" required><br><br>

    <input type="submit" value="Submit">
  </form>
  </center>
</body>
</html>
.