<%--Created by IntelliJ IDEA.--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Employee</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/employee">Back to employee list</a>
</p>
<table>
    <tr>
        <td>ID: </td>
        <td>${rental.id}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${rental.name}</td>
    </tr>
    <tr>
        <td>Age: </td>
        <td>${rental.age}</td>
    </tr>
    <tr>
        <td>Gender: </td>
        <td>${rental.gender}</td>
    </tr>
    <tr>
        <td>Status: </td>
        <td>${rental.status}</td>
    </tr>
    <tr>
        <td>Phone: </td>
        <td>${rental.phone}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td><image href = "${rental.urlImage}" alt = "Not available"></image></td>
    </tr>

</table>

</body>
</html>
