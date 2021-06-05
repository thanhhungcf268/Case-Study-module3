<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/6/2021
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List type service </h1>
<form method="post" action="/login?action=login">
    <input hidden name="passWord" value="${passWord}">
    <input hidden name="userName" value="${userName}">
    <button type="submit">back home</button>
</form>
<a href="/Services?action=create">|| create new ||</a>
<p style="color: red"><c:out value="${message}"/></p>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Type</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${services}" var="service">
        <tr>
            <td><c:out value="${service.id}"/></td>
            <td><c:out value="${service.name}"/></td>
            <td><c:out value="${service.type}"/></td>
            <td><a href="/Services?action=edit&service_id=${service.id}">Edit</a></td>
            <td><a href="/Services?action=delete&service_id=${service.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
