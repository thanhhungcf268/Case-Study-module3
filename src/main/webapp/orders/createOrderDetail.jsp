<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link href="css/bootstrap-5.0.1-dist/css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css">
    <style>
        table {
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
<div align="center">
    <h1>Create new order detail</h1>
    <h2><a href="/orders">List order detail</a></h2>
    <h2><a href="/">Choose type service</a></h2>
    <c:if test="${message!= null}">
    <p style="color: red"><c:out value="${message}"/></p>
    </c:if>
    <form method="post">
        <table>
            <tr>
                <td></td>
                <td><input type="hidden" name="orderId"></td>
            </tr>
            <tr>
                <td>User Id:</td>
                <td>
                    <select name="userId">
                        <c:forEach items="${users}" var="users">
                            <option value="${users.userId}">
                                <c:out value="${users.userName}"/>
                            </option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Person Id:</td>
                <td><input type="text" name="personId"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Hours:</td>
                <td><input type="text" name="hours"></td>
            </tr>
            <tr>
                <td>Start Hour:</td>
                <td><input type="text" name="startHour"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button>Create</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>