<%--Created by IntelliJ IDEA.--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Employee</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <a href="/employee">Back to Employee List</a>
    </h2>
</center>
<div align="center">
    <c:if test="${message != null}">
        <h3 style="color: red"><c:out value="${message}"/></h3>
    </c:if>
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Employee</h2>
            </caption>
            <p> </p>
            <tr>
                <th>Employee's Name</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
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
                </td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>
                    <input type="radio" id="male" name="gender" value="male">
                    <label for="male">Male</label><br>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label><br>
                    <input type="radio" id="other" name="gender" value="other">
                    <label for="other">Other</label>
                </td>
            </tr>
            <tr>
                <th>Status</th>
                <td>
                    <input type="radio" id="true" name="status" value="true">
                    <label for="true">Available</label><br>
                    <input type="radio" id="false" name="status" value="false">
                    <label for="false">Not available</label><br>
                </td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>
                    <input type="text" name="phone" id="phone" size="10"/>
                </td>
            </tr>
            <tr>

                <th>Image URL</th>
                <td>
                    <input type="text" name="urlImage" id="image" size="45"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
<%--                    <input type = "reset" value = "Clear" style = "background-color: red"/>--%>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
