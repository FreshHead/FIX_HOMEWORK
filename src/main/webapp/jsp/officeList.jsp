<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>

<table>
    <tr>
        <th>Name</th>
        <th>Cost</th>
    </tr>
    <c:forEach items="${offices}" var="office">
        <tr>
            <td>${office.name}</td>
            <td>${office.address}</td>
            <td>${office.phone}</td>
        </tr>
    </c:forEach>
</table>
<form method="post" action="/officeList">
    <label for="name">Office name
        <input class="input-field" type="text" id="name" name="name">
    </label>
    <label for="address">Office address
        <input class="input-field" type="text" id="address" name="address">
    </label>
    <label for="phone">Office phone
        <input class="input-field" type="text" id="phone" name="phone">
    </label>
    <input type="submit" value="Add office">
</form>
</html>
