<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/blog.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
	<script src="/js/jquery-1.10.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

</head>
<body>

<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://support.microsoft.com/zh-tw/help/17621/internet-explorer-downloads">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

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
				<li class="active"><a href="/ryan/blog">作品</a></li>
				<li><a href="/ryan/login">管理</a></li>
				<li><a href="/ryan/contact">聯繫</a></li>
				<li><a href="/ryan/coffee">咖啡</a></li>
				<li><a href="/ryan/rsscrawler">爬蟲</a></li>
				<div class="clearfix"></div>
			</ul>
		</div>

		<div class="clearfix"> </div>

	</div>

	<div class="blog">
		<div class="blog-content" >

			<div class="portfolio-icon col-xs-12 col-sm-6 col-md-3 ">
				<div class="portfolio-padding">
					<a href="#mining" id="portfolio-slide-doodleit"  data-toggle="modal">
						<img alt="cnn" src="/images/blog_lenet.png">
						<div class="overlay">
							<div class="overlay-content">
								深度卷積神經網路
								<p>
									Data Mining
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<div id="mining" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">

							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<div class="clearfix"> </div>

							<div id="myMining" class="carousel slide" data-ride="carousel" >

								<ol class="carousel-indicators">
									<li data-target="#myMining" data-slide-to="0" class="active"></li>
									<li data-target="#myMining" data-slide-to="1"></li>
								</ol>

								<div class="carousel-inner">
									<div class="item active">
										<img src="/images/blog_cnn_result.png" alt="Los Angeles">
									</div>

									<div class="item">
										<img src="/images/blog_paper_imdb.png" alt="Chicago">
									</div>

								</div>

								<a class="left carousel-control" href="#myMining" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myMining" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
									<span class="sr-only">Next</span>
								</a>

							</div>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-body">
							<form class="form-horizontal col-sm-12">
								<span class="title">卷積神經網路應用於社群資訊的電影評價預測之研究</span><br/>
								<br/>
								研究重點：<br/>
								1.  嘗試各種方法將社群資訊轉換為圖片，並找出這些方法中能夠有效提升預測準確率的方法。<br/>
								2.  在Caffe中找出較適用於本研究的Model。<br/>
								3.  調整Caffe中Model的參數，找出適合的參數。<br/>
								4.  利用Java配合Excel做資料預處理的部分。<br/>
								5.  結合MovieLens1M和IMDb資料共1000209筆資料轉成1000209張圖片，並分類做5倍交叉驗證。<br/>
								6.  實驗結果證明：我提出的方法結合MovieLens1M和IMDb，準確率從34.88%提升至70.04%。<br/>
								<br/>
								-  技術：Java、Deep  Learning、Data  Mining、Excel、Image  Processing。<br/>
								<br/>
								貢獻：<br/>
								1.  據我們所知，本研究是首次利用社群資訊轉換為圖片然後訓練卷積神經網路（CNNs）來做電影評價預測。<br/>
								2.  我提出一種新的方法，將社群資訊轉換為圖片。<br/>
								3.  本研究首次應用Caffe的LeNet-5模型在推薦系統上。
							</form>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						</div>

					</div>
				</div>
			</div>


			<div class="portfolio-icon col-xs-12 col-sm-6 col-md-3">
				<div class="portfolio-padding">
					<a href="#security" data-toggle="modal">
						<img alt="security" src="/images/blog_security_set.jpg">
						<div class="overlay">
							<div class="overlay-content">
								網路攻擊偵測
								<p>
									Information Security
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>


			<div id="security" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<div class="clearfix"> </div>

							<div id="mySecurity" class="carousel slide" data-ride="carousel" >

								<ol class="carousel-indicators">
									<li data-target="#mySecurity" data-slide-to="0" class="active"></li>
									<li data-target="#mySecurity" data-slide-to="1"></li>
								</ol>

								<div class="carousel-inner">
									<div class="item active">
										<img src="/images/blog_security_setting.jpg" alt="Los Angeles">
									</div>
									<div class="item">
										<img src="/images/blog_security.jpg" alt="Chicago">
									</div>
								</div>

								<a class="left carousel-control" href="#mySecurity" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#mySecurity" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
									<span class="sr-only">Next</span>
								</a>

							</div>

						</div>
						<div class="clearfix"> </div>
						<div class="modal-body">
							<form class="form-horizontal col-sm-12">
								<span class="title">網路攻擊偵測</span><br/>
								<br/>
								研究重點：<br/>
								1.  利用Wireshark擷取網路封包，並進行分析。<br/>
								2.  利用C#結合SharpPcap，針對5種攻擊方式的特徵做分析，判斷是否流量異常或遭受攻擊。<br/>
								3.  視窗化加入即時封包流量曲線圖並設置Flood攻擊的警示線。<br/>
								4.  對開發的網路攻擊偵測系統做壓力測試。<br/>
								<br/>
								-  技術：C#、Wireshark、SharpPcap、Information  Security。
							</form>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						</div>
					</div>
				</div>
			</div>

			<div class="portfolio-icon col-xs-12 col-sm-6 col-md-3">
				<div class="portfolio-padding">
					<a href="#ctr" data-toggle="modal">
						<img alt="ctr" src="/images/blog_ctr_system.jpg">
						<div class="overlay">
							<div class="overlay-content">
								社群資訊分群做電影推薦
								<p>
									Data Mining
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<div id="ctr" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<div class="clearfix"> </div>

							<div id="myctr" class="carousel slide" data-ride="carousel" >

								<ol class="carousel-indicators">
									<li data-target="#myctr" data-slide-to="0" class="active"></li>
									<li data-target="#myctr" data-slide-to="1"></li>
								</ol>

								<div class="carousel-inner">
									<div class="item active">
										<img src="/images/blog_ctrmodel.png" alt="Los Angeles">
									</div>
									<div class="item">
										<img src="/images/blog_ctr_system.jpg" alt="Chicago">
									</div>
								</div>

								<a class="left carousel-control" href="#myctr" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myctr" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
									<span class="sr-only">Next</span>
								</a>

							</div>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-body">
							<form class="form-horizontal col-sm-12">
								<span class="title">利用社群資訊的分群做電影推薦之研究</span><br/>
								<br/>
								研究重點：<br/>
								1.  利用C和Excel做資料預處理並將資料做分群。<br/>
								2.  TOP-N推薦。<br/>
								3.  實驗結果證明：推薦系統加入社群資訊以及將資料做分群確實能夠改善推薦的效果，最佳的recall值從69%提升至84%。<br/>
								<br/>
								-  技術：C、Data  Mining、Excel。<br/>
								<br/>
								貢獻：<br/>
								1.  通過所提出的CRC方法，我們減少數據大小使方法具有更高的效能。<br/>
								2.  研究結果顯示所提出的CRC方法，比過去的方法提升更高的recall值。<br/>
								3.  CRC方法考慮到用戶資訊的分群。
							</form>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						</div>
					</div>
				</div>
			</div>

			<div class="portfolio-icon col-xs-12 col-sm-6 col-md-3">
				<div class="portfolio-padding">
					<a href="#ryanblog" data-toggle="modal">
						<img alt="ryanblog" src="/images/blog_iphone.jpg">
						<div class="overlay">
							<div class="overlay-content">
								個人部落格
								<p>
									Li-chia Blog
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<div id="ryanblog" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<div class="clearfix"> </div>

							<div id="myryanblog" class="carousel slide" data-ride="carousel" >

								<ol class="carousel-indicators">
									<li data-target="#myryanblog" data-slide-to="0" class="active"></li>
									<li data-target="#myryanblog" data-slide-to="1"></li>
								</ol>

								<div class="carousel-inner">
									<div class="item active">
										<img src="/images/blog_iphone.jpg" alt="Los Angeles">
									</div>
									<div class="item">
										<img src="/images/blog_back.jpg" alt="Chicago">
									</div>
								</div>

								<a class="left carousel-control" href="#myryanblog" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myryanblog" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
									<span class="sr-only">Next</span>
								</a>

							</div>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-body">
							<form class="form-horizontal col-sm-12">
								<span class="title">個人部落格</span><br/>
								<br/>
								完成部分：<br/>
								1.  利用 DIV + CSS + Bootstrap 做網頁切版。<br/>
								2.  利用 Photoshop 修圖製作素材。<br/>
								3.  利用 Javascript + Jquery 做特效和功能。<br/>
								4.  利用 Spring + Spring MVC + Spring Annotation + Spring Security + Spring Data JPA + Hibernate + MySQL 做 Security、CRUD、SendEmail、ORM。<br/>
								<br/>
								-  技術：<br/>
								1.  IntelliJ IDEA + Tomcat + Maven。<br/>
								2.  HTML/CSS + Javascript + Jquery + Photoshop + Bootstrap。<br/>
								3.  Spring + Spring MVC + Spring Annotation + Spring Security + Spring Data JPA + Hibernate + MySQL + MAMP。
								<br/>
							</form>
						</div>
						<div class="clearfix"> </div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						</div>
					</div>
				</div>
			</div>

		</div>
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

<script src="/js/main.js"></script>

</body>
</html>