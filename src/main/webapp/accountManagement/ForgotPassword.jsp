<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/6/2021
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgot Password</title>
</head>
<body>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
<div class="col-md-9 m-auto" >
  <c:if test="${message != null}">
    <h3 style="color: red"><c:out value="${message}"/></h3>
  </c:if>
  <div class="card">
    <div class="card-header bg-info"> Forgot Password</div>
    <div class="card-body">
      <form class="form-horizontal" method="post" action="/users?action=ForgotPassword" >
        <p>  <label class="control-label">userName:</label>
          <input class="form-control" name="userName">
        </p>
        <p>  <label class="control-label">Phone:</label>
          <input class="form-control" name="phone">
        </p>
        <p><button type="submit" class="btn btn-warning">Send mail</button></p>
      </form>
    </div>
  </div>
</div>
</body>
</html>

