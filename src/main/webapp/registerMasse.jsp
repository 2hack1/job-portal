<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"     href="assets/css/register.css" >
</head>
<body>
<form action="aaa" method="post" class="registration-form">
<h4 style='color:green'>Your Registration  Sucssesfully  going to Home Page and Login to Further</h4><br>
        <h2>User Registration</h2>
        <label for="name">Name:</label>
        <input type="text" id="name1" name="name1" placeholder="enter  your name" required >

        <label for="email">Email:</label>
        <input type="email" id="email" name="email1"  placeholder="enter  your name"required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="pass" placeholder="enter  your password"required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city1" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender1" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

      <input  type="submit" value="Register"> 
    </form>
</body>
</html>













