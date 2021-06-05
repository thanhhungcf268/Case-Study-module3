
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List user</title>
</head>
<body>
<h1>List user</h1>
<form method="post" action="/login?action=login">
    <input hidden name="userName" value="${userName}">
    <input hidden name="passWord" value="${passWord}">
    <button style="height: auto" type="submit">back home</button>
</form>
<table>
    <tr>
        <td>id</td>
        <td>userName</td>
        <td>passWord</td>
        <td>gender</td>
        <td>phone</td>
        <td>level</td>
    </tr>
    <c:forEach items="${user}" var="user1">
        <tr>
            <td><c:out value="${user1.userId}"/></td>
            <td><c:out value="${user1.userName}"/></td>
            <td><c:out value="${user1.passWord}"/></td>
            <td><c:out value="${user1.gender}"/></td>
            <td><c:out value="${user1.phone}"/></td>
            <td><c:out value="${user1.level}"/></td>
            <td><form><button><a href="/users?action=edit&userId=${user1.userId}">Edit</a></button></form></td>
            <td><a href="/users?action=delete&userId=${user1.userId}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
