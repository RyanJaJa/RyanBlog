<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<script src="/js/jquery.min.js"></script>
	
</head>
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index"><img src="/images/logo.png" class="img-responsive" alt=""></a>
			</div>
			
				<div class="head-nav">
					<span class="menu"> </span>
						<ul class="cl-effect-1">
							<li><a href="/">首頁</a></li>
							<li><a href="/ryan/about">關於</a></li>
							<li><a href="/ryan/blog">作品</a></li>
							<li class="active"><a href="/ryan/login">管理</a></li>
							<li><a href="/ryan/contact">聯繫</a></li>
							<li><a href="/ryan/coffee">咖啡</a></li>
							<li><a href="/ryan/rsscrawler">爬蟲</a></li>
							<div class="clearfix"></div>
						</ul>
				</div>

			<div class="clearfix"> </div>

		</div>
	</div>
<!-- header -->

<!-- login -->
<div class="container">
	<div class="login-page">
		
			<div class="account_grid">

			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">

					<h3>管理系統</h3>

<%--
				   <c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message != null}">
					   <p>
							   ${SPRING_SECURITY_LAST_EXCEPTION.message}
					   </p>
				   </c:if>
				   <c:if test="${param.auth eq 'failure'}">
					   .....
					   <div class="error">
						   <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
					   </div>
				   </c:if>

				   ${param.error}
				   ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
			       ${SPRING_SECURITY_LAST_EXCEPTION.message}
				   [[${session.SPRING_SECURITY_LAST_EXCEPTION.message}]]
				   <c:if test="${not empty error}"><div>${error}</div></c:if>
				   <c:if test="${not empty message}"><div>${message}</div></c:if>
				   Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

				   <c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
					   <div class="error">
						   Your login attempt was not successful, try again.<br />
						   Reason: ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
						   [[${session.SPRING_SECURITY_LAST_EXCEPTION.message}]]
					   </div>
				   </c:if>
--%>

                   <c:url value="/ryan/login" var="loginUrl"/>
                   <form action="${loginUrl}" method="POST">
						<div>
							<span id="address">電子信箱</span>
                            <input type="text" value="" placeholder="E-mail" id="username" name="username"/>
						</div>
						<div>
							<span id="spanpass">密碼</span>
                            <input type="password" value="" placeholder="Password" id="password" name="password"/>
						</div>
					   <!--param.error != null 表示有錯誤所以不是null-->
					    <c:if test="${param.error != null}">
						   <div class="errorblock">
							   <span id="warnning">登入失敗！ 帳號或密碼錯誤，請重新輸入。</span>
						   </div>
					    </c:if>
						<input type="submit" value="登入">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>

			   </div>

				<div class="clearfix"> </div>

			</div>
	</div>
 <!--login -->

<div class="footer">
			<div class="col-sm-6  col-md-3">
				<h4>技術文件</h4>
				<ul>
					<li><a href="http://websystique.com/">||   WebSystique</a></li>
					<li><a href="https://docs.spring.io/spring-security/site/docs/current/reference/htmlsingle/">||   Spring Security</a></li>
					<li><a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/">||   Spring Data JPA</a></li>
				</ul>
			</div>
			<div class="col-sm-6  col-md-3">
				<h4>技術資源</h4>
				<ul>
					<li><a href="https://github.com/showcases/open-source-integrations">||   Github</a></li>
					<li><a href="https://www.w3schools.com/bootstrap/default.asp">||   w3schools</a></li>
					<li><a href="https://oz-code.com/">||   OzCode</a></li>
				</ul>
			</div>
			<div class="col-sm-6  col-md-3">
				<h4>常用連結</h4>
				<ul>
					<li><a href="http://www.concretepage.com/">||  ConcretePage</a></li>
					<li><a href="http://stackoverflow.com/">||  stackoverflow</a></li>
					<li><a href="https://bitbucket.org/">||  Bitbucket</a></li>
				</ul>
			</div>
			<div class="col-sm-6  col-md-3">
				<h4>推薦連結</h4>
				<ul>
					<li><a href="https://www.jetbrains.com/idea/">||  IntelliJ IDEA</a></li>
					<li><a href="http://www.jinq.org/">||   Jinq</a></li>
					<li><a href="https://openhome.cc/Gossip/DesignPattern/">||  Design Pattern</a></li>
				</ul>
			</div>
			
			<div class="clearfix"> </div>

		</div>
	</div>

<script src="/js/main.js"></script>

</body>
</html>