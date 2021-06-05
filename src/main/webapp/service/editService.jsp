<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/6/2021
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit type service</title>
</head>
<body>
<h1>Edit service </h1>
<p style="color: red"><c:out value="${message}"/></p>
<a href="/">|| back home ||</a>
<a href="/Services">|| back list type of service ||</a>
<form method="post" action="/Services?action=edit&&service_id=${service.id}" >
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="service_name" value="${service.name}"></td>
        </tr>
        <tr>
            <td>Type:</td>
            <td><select name="type_id">
                <c:forEach items="${typeServices}" var="type">
                    <option value="${type.getId()}"><c:out value="${type.getName()}"/></option>
                </c:forEach>
            </select></td>
        </tr>
        <tr><td></td>
            <td><button type="reset">reset</button>  <button type="submit">submit</button></td>
        </tr>
    </table>
</form>
</body>
</html>
