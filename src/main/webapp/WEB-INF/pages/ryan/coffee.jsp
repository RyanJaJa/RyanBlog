<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: Chia's JaJa
  Date: 2017/6/10
  Time: 上午 12:00
  To create this template use File | Settings | File Templates.
--%>

<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>


<a href="/">首頁</a>
<form:form method="post" modelAttribute="coffee">
    <div class="form_details">
        <form:select path="id">
            <form:option value="1">拿鐵</form:option>
            <form:option value="2">義式咖啡</form:option>
            <form:option value="3">卡布奇諾</form:option>
            <form:option value="4">摩卡</form:option>
        </form:select>
        <input type="submit" value="查詢">
    </div>
</form:form>
${coffeeList.ingredients}
<br/>
${coffeeList.proportion}


</body>
</html>
