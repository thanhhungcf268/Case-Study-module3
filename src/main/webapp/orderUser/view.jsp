<%--Created by IntelliJ IDEA.--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Employee</title>
    <style>
        div {
            width: 50%;
            position: relative;
            left: 25%
        }

        #firstRow {
            width: 20%;
        }

        p {
            font-size: 18px;
        }

        .title {
            font-size: 22px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>Employee Details</h1>
<p>
<form method="post" action="/login?action=login">
    <input hidden name="passWord" value="${passWord}">
    <input hidden name="userName" value="${userName}">
    <button type="submit">Back Home Page</button>
</form>
<a href="/orders?action=create">Create Order</a>
</p>
<div align="center">
    <fieldset>
        <legend><p class="title">Employee Information</p></legend>
        <table align="center" width="75%" height="50%">
            <tr id="firstRow">
                <td rowspan="5"><img src="${rental.urlImage}" alt="Not available" width=150 height=240></td>
                <td colspan="2"><p class="title">${rental.id}. ${rental.name}</p></td>
            </tr>
            <tr>
                <td><p>Age: </p></td>
                <td><p>${rental.age}</p></td>
            </tr>
            <tr>
                <td><p>Gender: </p></td>
                <td><p>${rental.gender}</p></td>
            </tr>
            <tr>
                <td><p>Status: </p></td>
                <td>
                    <c:if test="${rental.status == true}">
                        <p>Available</p>
                    </c:if>
                    <c:if test="${rental.status == false}">
                        <p>Not Available</p>
                    </c:if>
                </td>
            </tr>
            <tr>
                <td><p>Phone: </p></td>
                <td><p>${rental.phone}</p></td>
            </tr>

        </table>
    </fieldset>
</div>

</body>
</html>
