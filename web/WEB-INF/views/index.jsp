<%--
  Created by IntelliJ IDEA.
  User: wakeupneo
  Date: 11/16/2019
  Time: 10:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Customer Manager</title>
  </head>
  <body>
  <div align="center">
    <h1>Customer Manager</h1>
    <form method="get" action="search">
      <input type="text" name="keyword"/>
      <input type="submit" value="Search">
    </form>
    <h3><a href="">New Customer</a></h3>
    <table border="1" padding="5">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
      <c:forEach items="${listCustomer}" var="customer">
        <tr>
          <td>${customer.id}</td>
          <td>${customer.name}</td>
          <td>${customer.email}</td>
          <td>${customer.address}</td>
        </tr>
      </c:forEach>
    </table>
  </div>
  </body>
</html>
