<%--Created by IntelliJ IDEA.--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete employee</title>
</head>
<body>
    <center>
        <h1>Employee Management</h1>
        <h2>
            <a href="/employee">Back to Employee List</a>
        </h2>
    </center>
    <div align="center" style = "width: 50%; position: relative; left: 25%">
        <h3 style = "color: red">Are you sure?</h3>
        <form method="post">
            <fieldset>
                <legend><h3>Employee information</h3></legend>
                <table>
                    <tr>
                        <td>ID : </td>
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
                        <td>Image: </td>
                        <td><img src="${rental.urlImage}" alt = "Not available" width = 75 height = 75></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Delete"/>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </div>
</body>
</html>
