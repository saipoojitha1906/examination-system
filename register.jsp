<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="register.css">
<script>
function validateForm() {
  var name = document.getElementById("name").value;
  var uname = document.getElementById("uname").value;
  var pwd = document.getElementById("pwd").value;
  var pwd1 = document.getElementById("pwd1").value;
  var course = document.getElementById("course").value;
  var gender = document.querySelector('input[name="gender-choice"]:checked');
  var mail = document.getElementById("mail").value;
  var abc=true;
  if (name === "") {
    alert("Please enter your name.");
    abc=false;
  }

  if (pwd === "" || pwd1 === "") {
    alert("Please enter a password and re-enter the password.");
    abc=false;
  }

  if (pwd !== pwd1) {
    alert("Passwords do not match.");
    abc=false;
  }

  if (course === "course") {
    alert("Please select a course.");
    abc=false;
  }

  if (!gender) {
    alert("Please select your gender.");
    abc=false;
  }

  if (mail === "") {
    alert("Please enter your email.");
    abc=false;
  }
 if(abc==true){
	 alert("You have successfully registered for the exam.");
 }	
  return abc;
}
</script>
</head>
<body>
<div class="a"><h1>Registration Form</h1></div>
<form action="RegisterExam" method="post" onsubmit="return validateForm()">
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" required><br><br>
  <label for="uname">Username:</label><br>
  <input type="text" id="uname" name="uname"><br><br>
  <label for="pwd">Password:</label><br>
  <input type="password" id="pwd" name="pwd" required><br><br>
  <label for="pwd1">Re-enter password:</label><br>
  <input type="password" id="pwd1" name="pwd1" required><br><br>
  <label>Course:</label>
  <select id="course" name="course">
    <option value="course">Courses</option>
    <option value="cse">CSE</option>
    <option value="ece">ECE</option>
    <option value="IT">IT</option>
    <option value="mech">MECH</option>
    <option value="eee">EEE</option>
    <option value="chem">CHEM</option>
  </select><br><br>
  <div>Gender:<br>
    <input type="radio" name="gender-choice" value="male" id="male">
    <label for="male">Male</label>

    <input type="radio" name="gender-choice" value="female" id="female">
    <label for="female">Female</label>

    <input type="radio" name="gender-choice" value="other" id="other">
    <label for="other">Other</label><br><br>
  </div>
  <label for="mail">Email:</label><br>
  <input type="email" id="mail" name="mail" required><br><br>
  <input type="submit" value="submit">