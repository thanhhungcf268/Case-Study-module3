<%--Created by IntelliJ IDEA.--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Employee</title>
</head>
<body>
<h1>Employee Details</h1>
<p>
<form method="post" action="/employee">
    <button type="submit">Back to Employee List</button>
</form>
<form method="post" action="/login?action=login">
    <input hidden name="passWord" value="${passWord}">
    <input hidden name="userName" value="${userName}">
    <button type="submit">Back Home Page</button>
</form>
</p>
<table>
    <tr>
        <td>ID:</td>
        <td>${rental.id}</td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>${rental.name}</td>
    </tr>
    <tr>
        <td>Age:</td>
        <td>${rental.age}</td>
    </tr>
    <tr>
        <td>Gender:</td>
        <td>${rental.gender}</td>
    </tr>
    <tr>
        <td>Status:</td>
        <td>${rental.status}</td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td>${rental.phone}</td>
    </tr>
    <tr>
        <td>Image</td>
        <td>
            <image href="${rental.urlImage}" alt="Not available"></image>
        </td>
    </tr>

</table>

</body>
</html>
