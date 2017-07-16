<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<script src="/js/jquery.min.js"></script>
	<script src="/js/responsiveslides.min.js"></script>

</head>

<body>
<%--<jsp:include page="about.jsp"/>--%>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index"><img src="/images/logo.png" class="img-responsive" alt=""></a>
			</div>
			
				<div class="head-nav">
					<span class="menu"> </span>
						<ul class="cl-effect-1">
							<li class="active"><a href="/">首頁</a></li>
							<li><a href="/ryan/about">關於</a></li>
							<li><a href="/ryan/blog">作品</a></li>
							<li><a href="/ryan/login">管理</a></li>
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
<div class="container">

	<div class="bann-right">
		<!-- banner -->
		<div class=" banner col-xs-12 col-sm-12 col-md-12">
			<div class="slider">
				<div class="callbacks_container">
					<ul class="rslides" id="slider">
						<li>
							<img src="/images/caffecnn.png" class="img-responsive" alt="">
							<div class="caption">
								<h3>Deep Learning</h3>
								<p>卷積神經網路應用於社群資訊的電影評價預測之研究</p>
							</div>
						</li>
						<li>
							<img src="/images/security_set.jpg" class="img-responsive" alt="">
							<div class="caption">
								<h3>Information Security</h3>
								<p>網路攻擊偵測</p>
							</div>
						</li>
						<li>
							<img src="/images/ctrmodel.png" class="img-responsive" alt="">
							<div class="caption">
								<h3>Data Mining</h3>
								<p>利用社群資訊的分群做電影推薦之研究</p>
							</div>
						</li>
						<li>
							<img src="/images/about.jpg" class="img-responsive" alt="">
							<div class="caption">
								<h3>Blog</h3>
								<p>個人部落格</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- banner -->
	</div>


	<div class="clearfix "> </div>
		<div class="fle-xsel">
			<ul id="flexiselDemo3">
				<li>
					<a href="http://stackoverflow.com/">
						<div class="banner-1">
							<img src="/images/stackoverflow.png" class="img-responsive" alt="">
						</div>
					</a>
				</li>
				<li>
					<a href="https://www.javaworld.com.tw/jute/">
						<div class="banner-1">
							<img src="/images/javaworld.jpg" class="img-responsive" alt="">
						</div>
					</a>
				</li>			
				<li>
					<a href="https://github.com/showcases/open-source-integrations">
						<div class="banner-1">
							<img src="/images/github.jpg" class="img-responsive" alt="">
						</div>
					</a>
				</li>		
				<li>
					<a href="http://www.codedata.com.tw/category/all/">
						<div class="banner-1">
							<img src="/images/codedata.jpg" class="img-responsive" alt="">
						</div>
					</a>
				</li>	
				<li>
					<a href="https://groups.google.com/forum/#!forum/caffe-users">
						<div class="banner-1">
							<img src="/images/caffe.png" class="img-responsive" alt="">
						</div>
					</a>
				</li>	
				<li>
					<a href="http://www.codeproject.com/">
						<div class="banner-1">
							<img src="/images/codeproject.png" class="img-responsive" alt="">
						</div>
					</a>
				</li>				
			</ul>

			<div class="clearfix"> </div>

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

<script type="text/javascript" src="/js/jquery.flexisel.js"></script>
<script src="/js/main.js"></script>

</body>
</html>