<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Edit order detail</h1>
<a href="/orders">List order detail</a>
<c:if test="${message!= null}">
    <p style="color: red"><c:out value="${message}"/></p>
</c:if>
<form method="post" action="/orders?action=edit&&id=${orderDetail.orderId}">
    <table>
        <tr>
            <td>User Id:</td>
            <td><input type="text" name="userId" value="${orderDetail.userId}"></td>
        </tr>
        <tr>
            <td>Person Id:</td>
            <td><input type="text" name="personId" value="${orderDetail.personId}"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" name="price" value="${orderDetail.price}"></td>
        </tr>
        <tr>
            <td>Hours:</td>
            <td><input type="text" name="hours" value="${orderDetail.hours}"></td>
        </tr>
        <tr>
            <td>Start Hour:</td>
            <td><input type="text" name="startHour" value="${orderDetail.startHour}"></td>
        </tr>
        <tr>
            <td></td>
            <td><button>Edit</button></td>
        </tr>
    </table>
</form>
</body>
</html>