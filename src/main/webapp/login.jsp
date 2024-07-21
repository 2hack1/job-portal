<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JobFinder Login Form</title>
<link rel="stylesheet" href="assets/css/login.css">
</head>
<body>



 <form action="bbb" method="Post" class="registration-form">
        <h2>User Login</h2>
        <label for="name">Name:</label>
        <input type="text" id="name1" name="name1" placeholder="enter  your name" required >

        <label for="email">Email:</label>
        <input type="email" id="email" name="email1"  placeholder="enter  your name"required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="pass" placeholder="enter  your password"required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender1" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

        <input type="submit" value="Login">
    </form>

</body>
</html>