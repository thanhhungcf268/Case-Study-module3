<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <style>
        *{
            font-family: "Times New Roman", serif;
        }
    </style>
    <link href="../css/bootstrap-5.0.1-dist/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<h1><c:if test="${message!= null}">
    <p style="color: red"><c:out value="${message}"/></p>
</c:if></h1>
<form method="post">
    <h1>Username :</h1>
    <input name="userName" type="text">
    <h1>PassWord :</h1>
    <input name="passWord" type="text">
    <h1>gender :</h1>
    <input name="gender" type="text">
    <h1>phone :</h1>
    <input name="phone" type="text">
    <h1>rank :</h1>
    <input name="rank" type="text">
    <br>
    <button type="submit">registration</button>
    <button type="submit"><a href="/">back home</a></button>
</form>
<script src="../css/bootstrap-5.0.1-dist/js/bootstrap.bundle.js"></script>
</body>
</html>
