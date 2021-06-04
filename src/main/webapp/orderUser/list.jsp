<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/4/2021
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Employees</h2></caption>

        <form>
            <input type="text" placeholder="Search By Name" name = "search">
            <button type = "submit">Search</button>
        </form>
        <br/>

        <button>Default Employee List</button>
        <button>Sort By Name</button>

        <tr>
            <td>Id</td>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Status</th>
            <th>Phone</th>
            <th>Image</th>
        </tr>
        <c:forEach var="rental" items="${rentals}">
            <tr>
                <td><c:out value="${rental.id}"/></td>
                <td><a href="/employee?action=viewEmployees&employeeId=${rental.id}">${rental.name}</a></td>
                <td><c:out value="${rental.age}"/></td>
                <td><c:out value="${rental.gender}"/></td>
                <td><c:out value="${rental.status}"/></td>
                <td><c:out value="${rental.phone}"/></td>
                <td><img src = "${rental.urlImage}" alt="Not available" width = 75 height = 75></td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
