<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/3/2021
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit customer</h1>
<a href="/customers">List customer</a>
<form method="post">
    <table>
        <h1>Username :</h1>
        <input name="userName" type="text" value="${user.userNam}">
        <h1>PassWord :</h1>
        <input name="passWord" type="text " value="${user.passWord}">
        <h1>gender :</h1>
        <input name="gender" type="text" value="${user.gender}">
        <h1>phone :</h1>
        <input name="phone" type="text" value="${user.phone}">
        <h1>rank :</h1>
        <input name="rank" type="text" value="${user.rank}">
            <td></td>
            <td><button>Edit</button></td>
        </tr>
    </table>
</form>
</body>
</html>
