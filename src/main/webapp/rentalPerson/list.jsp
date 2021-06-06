<%--Created by IntelliJ IDEA.--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
    <style>
        .sort{
            height: 30px;
            padding:0;
            margin:0;
            background-color: darkgray;
            border: none;
            width: 225px;
        }

        .sort ul, .sort li{
            padding:0;
            margin:0;
        }

        .sort li{
            position: relative;
            float: left;
            list-style: none;
            margin: 0;
            padding:0;
        }

        .sort li a {
            width: 50px;
            height: 30px;
            display: block;
            text-decoration: none;
            text-align: center;
            line-height: 30px;
            background-color: darkgray;
            color: white;
        }

        .sort ul ul li a {
            width: 100px;
            text-align: left;
            padding-left: 10px;
        }

        .sort li a:hover{
            background-color: black;
        }

        .sort ul ul{
            position: absolute;
            top: 30px;
            left: 15px;
            visibility: hidden;
        }

        .sort ul li:hover ul{
            visibility: visible;
        }

        #sort-header{
            width: 75px;
            height: 30px;
            display: block;
            text-decoration: none;
            text-align: center;
            line-height: 30px;
            background-color: white;
            color: black;
        }

        #sort-header:hover{
            background-color: white;
        }

        input[type=text] {
            padding: 3px;
            margin-top: 8px;
            font-size: 17px;
            border: 1px solid grey;
        }

        .search-container button {
            padding: 6px 10px;
            margin-top: 8px;
            margin-right: 16px;
            background: #ddd;
            font-size: 17px;
            border: none;
            cursor: pointer;
        }
    </style>
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

    <div align="center">
        <caption><h2>List of Employees</h2></caption>
        <div class="search-container">
            <form>
                <input type="text" placeholder="Search By Name" name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>
        <br/>
        <div class = "sort">
            <ul>
                <li><a id = "sort-header">Sort By: </a></li>
                <li>
                    <a>ID</a>
                    <ul>
                        <li><a href = "/employee?sort=personId&type=asc">Ascending</a></li>
                        <li><a href = "/employee?sort=personId&type=desc">Descending</a></li>
                    </ul>
                </li>
                <li>
                    <a>Name</a>
                    <ul>
                        <li><a href = "/employee?sort=name&type=asc">Ascending</a></li>
                        <li><a href = "/employee?sort=name&type=desc">Descending</a></li>
                    </ul>
                </li>
                <li>
                    <a>Age</a>
                    <ul>
                        <li><a href = "/employee?sort=age&type=asc">Ascending</a></li>
                        <li><a href = "/employee?sort=age&type=desc">Descending</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <br/>
        <table border = "1" cellpadding="5">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Status</th>
            <th>Phone</th>
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="rental" items="${rentals}">
            <tr>
                <td><c:out value="${rental.id}"/></td>
                <td><a href="/employee?action=viewEmployee&employeeId=${rental.id}">${rental.name}</a></td>
                <td><c:out value="${rental.age}"/></td>
                <td><c:out value="${rental.gender}"/></td>
                <td>
                    <c:if test="${rental.status == true}">
                        <p>Available</p>
                    </c:if>
                    <c:if test="${rental.status == false}">
                        <p>N/A</p>
                    </c:if>
                </td>
                <td><c:out value="${rental.phone}"/></td>
                <td><a href = "${rental.urlImage}"><img src = "${rental.urlImage}" alt="Not available" width = 100 height = 160></a></td>
                <td>
                    <a href="/employee?action=editEmployee&employeeId=${rental.id}">Edit</a>
                </td>
                <td>
                    <a href="/employee?action=deleteEmployee&employeeId=${rental.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</div>
