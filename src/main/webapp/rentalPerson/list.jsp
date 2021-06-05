<%--Created by IntelliJ IDEA.--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Girlfriend List</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <a href="/employee?action=createEmployee">Add New Employees</a>
    </h2>
    <form method="post" action="/login?action=login">
        <input hidden name="passWord" value="${passWord}">
        <input hidden name="userName" value="${userName}">
        <button type="submit">Back Home Page</button>
    </form>
</center>
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
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="rental" items="${rentals}">
            <tr>
                <td><c:out value="${rental.id}"/></td>
                <td><a href="/employee?action=viewEmployee&employeeId=${rental.id}">${rental.name}</a></td>
                <td><c:out value="${rental.age}"/></td>
                <td><c:out value="${rental.gender}"/></td>
                <td><c:out value="${rental.status}"/></td>
                <td><c:out value="${rental.phone}"/></td>
                <td><img src = "${rental.urlImage}" alt="Not available" width = 75 height = 75></td>
                <td>
                    <a href="/employee?action=editEmployee&employeeId=${rental.id}">Edit</a>
                </td>
                <td>
                    <a href="/employee?action=deleteEmployee&employeeId=${rental.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
