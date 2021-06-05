<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit home</h1>

<form method="post" action="/users">
    <input hidden name="userName" value="${userName}">
    <input hidden name="passWord" value="${passWord}">
    <button style="height: auto" type="submit">Users List</button>
</form>
<form method="post">
    <input name="userId" type="hidden" value="${user.userId}">
    <h1>Username :</h1>
    <input name="userName" type="text" value="${user.userName}">
    <h1>PassWord :</h1>
    <input name="passWord" type="password" value="${user.passWord}">
    <h1>gender :</h1>
    <input name="gender" type="text" value="${user.gender}">
    <h1>phone :</h1>
    <input name="phone" type="text" value="${user.phone}">
    <h1>rank :</h1>
    <input name="level" type="text" value="${user.level}">
    <button>Edit</button>
</form>
</body>
</html>
