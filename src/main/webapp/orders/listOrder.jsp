<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Detail List</title>
    <link href="css/bootstrap-5.0.1-dist/css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css">
    <style>
        table{
            text-align: center;
        }
        tr:hover {
            background-color: #e3f2fd;
        }
        a:hover {
            color: red;
        }
        b:hover {
            color: red;
        }
    </style>
</head>
<body>

<table class="table table-striped">
    <thead>
    <tr>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid" style="background-color: #e3f2fd">
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <h1 style="margin: 10px">Order List</h1>
                    <p></p>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="margin: 10px">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/"><b>Homepage</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/orders?action=create"><b>Create Order</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/"><b>Service Detail</b></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </tr>
    <tr>
        <th>Order Id</th>
        <th>User Id</th>
        <th>Person Id</th>
        <th>Price</th>
        <th>Hours</th>
        <th>Start Hour</th>
        <th>edit</th>
        <th>delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderDetails}" var="orderDetail">
        <tr>
            <td><a href="orders?action=view&id=${orderDetail.orderId}" ><c:out value="${orderDetail.orderId}"/></a></td>
            <td><c:out value="${orderDetail.userId}"/></td>
            <td><c:out value="${orderDetail.personId}"/></td>
            <td><c:out value="${orderDetail.price}"/></td>
            <td><c:out value="${orderDetail.hours}"/></td>
            <td><c:out value="${orderDetail.startHour}"/></td>
            <td><a href="/orders?action=edit&id=${orderDetail.orderId}">Edit</a></td>
            <td><a href="/orders?action=delete&id=${orderDetail.orderId}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="css/bootstrap-5.0.1-dist/js/bootstrap.bundle.js"></script>
</body>
</html>