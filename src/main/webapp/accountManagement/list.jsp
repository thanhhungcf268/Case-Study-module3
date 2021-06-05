<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List user</h1>
<form method="post" action="/login?action=login">
    <input hidden name="passWord" value="${passWord}">
    <input hidden name="userName" value="${userName}">
    <button type="submit">back home</button>
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
            <td><a href="/users?action=edit&userId=${user1.userId}&userName=${userName}&passWord=${passWord}">Edit</a></td>
            <td><a href="/users?action=delete&userId=${user1.userId}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html
