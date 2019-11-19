<%--
  Created by IntelliJ IDEA.
  User: wakeupneo
  Date: 11/19/2019
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<div align="center">
    <h2>Edit Customer</h2>
    <form:form action="save" method="post" modelAttribute="customer">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>
                    ${customer.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save" /></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
