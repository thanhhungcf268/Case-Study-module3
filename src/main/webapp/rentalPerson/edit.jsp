<%--Created by IntelliJ IDEA.--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit employee</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <form method="post" action="/employee"><button type="submit">Back to Employee List</button></form>
    </h2>
</center>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Employee
                </h2>
            </caption>
            <c:if test="${message != null}">
                <h3 style="color: red"><c:out value="${message}"/></h3>
            </c:if>
<%--            <c:if test="${rental != null}">--%>
<%--                <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>--%>
<%--            </c:if>--%>
            <tr>
                <th>Employee's Name</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${rental.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Age</th>
                <td>
                    <select name = "age">
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                        <option>25</option>
                        <option>26</option>
                        <option>27</option>
                        <option>28</option>
                        <option>29</option>
                        <option>30</option>
                    </select>
<%--                    <input type="text" name="age" size="45"--%>
<%--                           value="<c:out value='${rental.age}' />"--%>
<%--                    />--%>
                </td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>
                    <input type="radio" id="female" name="gender" value="female" checked> Female
                    <br>
                    <input type="radio" id="male" name="gender" value="male"> Male
                    <br>
                    <input type="radio" id="other" name="gender" value="other"> Other
                </td>
            </tr>
            <tr>
                <th>Status</th>
                <td>
                    <input type="radio" id="true" name="status" value="true" checked> Available
                    <br>
                    <input type="radio" id="false" name="status" value="false" > Not available
                    <br>
                </td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>
                    <input type="text" name="phone" size="15"
                           value="<c:out value='${rental.phone}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Image URL</th>
                <td>
                    <input type="text" name="urlImage" size="50"
                           value="<c:out value='${rental.urlImage}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type = "reset" value = "Clear"/>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>


</body>
</html>
