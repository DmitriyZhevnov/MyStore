<%--
  Created by IntelliJ IDEA.
  User: Жевновы
  Date: 22.11.2020
  Time: 01:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавить новый товар</title>
</head>
<body>
<%String message = (String) session.getAttribute("message");%>
<p align="center"><%= message%></p>
<form action="/admin" method="post">
    ID товара: <input type="text" name="id" %>
    <br/>
    Название: <input type="text" name="name" %>
    <br/>
    Описание: <input type="text" name="description" %>
    <br/>
    Цена: <input type="text" name="price" %>
    <br/>
    Количество: <input type="text" name="count">
    <br/>
    <input type="hidden" name="operation" value="addNewProduct">
    <p><a href="/adminEditStorageOfProducts.jsp">Назад</a>
        <input type="submit" value="Добавить"/> </p>
</form>
</body>
</html>
