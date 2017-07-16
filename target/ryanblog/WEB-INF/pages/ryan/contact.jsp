<?xml version="1.0" encoding="UTF-8"?>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<div class="container">
	<div class="header">
			<div class="logo">
				<a href="index"><img src="/images/logo.png" class="img-responsive" alt=""></a>
			</div>
				<div class="head-nav">
					<span class="menu"> </span>
						<ul class="cl-effect-1">
							<li><a href="/">首頁</a></li>
							<li><a href="/ryan/about">關於</a></li>
							<li><a href="/ryan/blog">作品</a></li>
							<li><a href="/ryan/login">管理</a></li>
							<li class="active"><a href="/ryan/contact">聯繫</a></li>
							<li><a href="/ryan/coffee">咖啡</a></li>
							<li><a href="/ryan/rsscrawler">爬蟲</a></li>
							<div class="clearfix"></div>
						</ul>
				</div>
				
				<div class="clearfix"> </div>

		</div>
</div>
<!-- header -->
<div class="container">
	<div class="contact">

		<div class="main-head-section">
			<div class="contact-map">
				<iframe src="https://www.google.com/maps/embed/v1/place?q=%E6%96%B0%E5%8C%97%E5%B8%82%E6%B0%B8%E5%92%8C%E5%8D%80%E6%88%90%E5%8A%9F%E8%B7%AF%E4%B8%80%E6%AE%B5&key=AIzaSyB6QmTxfAQp8rMAY4jML3hv9U7kQVsxtBo"></iframe>
			</div>
		</div>

		<div class="contact_top">
			<div class="col-md-8 contact_left">
				<h4>馬上聯繫</h4>

				<form:form method="post" modelAttribute="sendemail">
					<div class="form_details">
						<form:input type="text" class="text" path="name" id="name" placeholder="姓名" />
						<form:input type="text" class="text" path="address" id="address" placeholder="電子郵件" />
						<form:input type="text" class="text" path="subject" id="subject" placeholder="主題" />
						<form:textarea path="message" id="message" placeholder="留言"/>
						<div class="clearfix"> </div>
						<div class="sub-button">
							<input type="submit" value="寄送">
						</div>
					</div>
				</form:form>

			</div>
			<div class="col-md-4 company-right">
				<div class="company_ad">
					<h3>聯繫資訊</h3>
					<address>

						<p>email:<a href="#">chiasjaja@gmail.com</a></p>
						<p>phone: 0979128196</p>
						<p>新北市永和區成功路一段</p>
									 	 	
					</address>
				</div>
							   		
			</div>

			<div class="clearfix"> </div>
						
		</div>

	</div>

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