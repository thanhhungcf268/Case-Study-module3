<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 6/4/2021
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<h1>Order Detail</h1>
<p>
    <a href="/orders">Back to orders list</a>
</p>
<table>
    <tr>
        <td>Order Id:</td>
        <td>${requestScope["orderDetail"].getOrderId()}</td>
    </tr>
    <tr>
        <td>User Id:</td>
        <td>${requestScope["orderDetail"].getUserId()}</td>
    </tr>
    <tr>
        <td>Person Id:</td>
        <td>${requestScope["orderDetail"].getPersonId()}</td>
    </tr>
    <tr>
        <td>Price:</td>
        <td>${requestScope["orderDetail"].getPrice()}</td>
    </tr>
    <tr>
        <td>Hours:</td>
        <td>${requestScope["orderDetail"].getHours()}</td>
    </tr>
    <tr>
        <td>Start Hour:</td>
        <td>${requestScope["orderDetail"].getStartHour()}</td>
    </tr>
</table>
</body>
</html>