<%--
  Created by IntelliJ IDEA.
  User: Chia's JaJa
  Date: 2017/3/31
  Time: 上午 04:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3個meta標籤*必须*放在最前面，任何其他内容都*必须*跟随在後！ -->
    <title>SpringMVC 用戶管理</title>

    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="/js/jquery.min.js"></script>
    <script src="/js/responsiveslides.min.js"></script>

</head>
<body>

<div class="container">
    <!-- header -->
    <div class="header">
        <div class="container">
            <div class="logo">
                <a href="index.html"><img src="/images/logo.png" class="img-responsive" alt=""></a>
            </div>

            <div class="head-nav">
                <span class="menu"> </span>
                <ul class="cl-effect-1">
                    <li class="active"><a href="../">首頁</a></li>
                    <li><a href="../ryan/about">關於</a></li>
                    <li><a href="../ryan/blog">作品</a></li>
                    <li><a href="../ryan/contact">聯繫</a></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
        </div>
    </div>
    <!-- header -->

    <h3>所有用戶<a href="/admin/create" type="button" class="btn btn-primary btn-sm">增加</a></h3>


    <c:if test="${empty userList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>表格為空，請<a href="/admin/create" type="button" class="btn btn-primary btn-sm">增加</a>
        </div>
    </c:if>

    <c:if test="${!empty userList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>暱稱</th>
                <th>姓名</th>
                <th>密碼</th>
                <th>操作</th>
            </tr>

            <c:forEach items="${userList}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td></td>
                    <td>${user.password}</td>
                    <td>
                        <a href="/admin/users/show/${user.id}" type="button" class="btn btn-sm btn-success">詳情</a>
                        <a href="/admin/users/update/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                        <a href="/admin/users/delete/${user.id}" type="button" class="btn btn-sm btn-danger">刪除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>

<!-- jQuery文件。務必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/js/main.js"></script>

</body>
</html>
