<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/3/2021
  Time: 8:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
  <link href="css/bootstrap-5.0.1-dist/css/bootstrap.css" rel="stylesheet">
</head>
<body>
  <form action="registration" method="post">
    <h1>Username :</h1>
    <input name="username" type="text">
    <h1>PassWord :</h1>
    <input name="passWord" type="text">
    <h1>Email :</h1>
    <input name="email" type="text">
    <h1>SDT :</h1>
    <input name="sdt" type="text">
    <br>
    <button type="submit" >registration</button>
  </form>
  <script src="css/bootstrap-5.0.1-dist/js/bootstrap.bundle.js"></script>
</body>
</html>
