<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Chia's JaJa
  Date: 2017/6/10
  Time: 下午 01:39
  To create this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爬蟲的世界</title>
</head>
<body>

<a href="/">首頁</a>

<form:form method="post" modelAttribute="rss">
        <form:input type="text" class="text" path="url" id="url" placeholder="請輸入RSS網址" />
        <input type="submit" value="RSS crawler start">
</form:form>

使用說明：
<br/>
請輸入RSS網址，
<br/>
例如：
<a href=https://udn.com/rssfeed/lists/2>聯合新聞網</a>的RSS網址
<br/>
https://udn.com/rssfeed/news/2/6638?ch=news

</body>
</html>
