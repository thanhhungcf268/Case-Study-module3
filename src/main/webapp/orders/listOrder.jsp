<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Detail List</title>
</head>
<body>
<h1>List Order Detail</h1>
<a href="/">Back to Homepage</a>
<a href="/orders?action=create">Create new order detail</a>
<table border="1px" style="text-align: center">
    <tr>
        <td>Order Id</td>
        <td>User Id</td>
        <td>Person Id</td>
        <td>Price</td>
        <td>Hours</td>
        <td>Start Hour</td>
        <td>edit</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${orderDetails}" var="orderDetail">
        <tr>
            <td><c:out value="${orderDetail.orderId}"/></td>
            <td><c:out value="${orderDetail.userId}"/></td>
            <td><c:out value="${orderDetail.personId}"/></td>
            <td><c:out value="${orderDetail.price}"/></td>
            <td><c:out value="${orderDetail.hours}"/></td>
            <td><c:out value="${orderDetail.startHour}"/></td>
            <td><a href="/orders?action=edit&id=${orderDetail.orderId}">Edit</a></td>
            <td><a href="/orders?action=delete&id=${orderDetail.orderId}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>