<%--
  Created by IntelliJ IDEA.
  User: Жевновы
  Date: 14.11.2020
  Time: 00:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Изменить статус пользователя</title>
</head>
<body>
<%@ page import="classes.StorageOfUsers, classes.Person" %>
<% Person person = (Person) session.getAttribute("currentUser");
    if (!person.getStatus().equals("admin") || StorageOfUsers.findPersonInStorageByLogin(person.getLogin()) == null) {
        session.setAttribute("currentUser", null);
        application.getRequestDispatcher("/Error").forward(request, response);
    }%>
<form action="/admin" method="post">
    <p style="color:#bf3b3b">Такого логина нет.</p>
    Введите логин пользователя: <input type="text" name="login">
    <br/>
    <input type="hidden" name="operation" value="changeStatus">
    <p>Выберите действие:
        <select name="option">
            <option value="makeAdmin">Установить статус Админ</option>
            <option value="deleteAdmin">Убрать статус Админа</option>
        </select></p>
    <input type="submit" value="Сохранить"/>
    <p><a href="adminPanel.jsp">Назад</a></p>
</form>
</body>
</html>