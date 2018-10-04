<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>风信子公益-秘书办</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.png">
<link rel="stylesheet" href="css/style.css">

<!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]-->

<style type="text/css">
#demo {
	background: #FFF;
	overflow: hidden;
	border: 1px dashed #CCC;
	width: 100%;
}

#demo img {
	border: 3px solid #F2F2F2;
}

#indemo {
	float: left;
	width: 800%;
}

#demo1 {
	float: left;
}

#demo2 {
	float: left;
}
</style>
</head>

<body>

	<section class="header-top-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="header-top-content">
						<ul class="nav nav-pills navbar-left">
							<li><a> <span>东莞市爱心志愿者协会&emsp;—</span>
							</a></li>
							<li><a> <span>风信子服务队</span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<div class="header-top-menu">
						<ul class="nav nav-pills navbar-right">
							<li><a
								href="${pageContext.request.contextPath}/register.jsp"> <i
									class="pe-7s-lock"></i>志愿者注册
							</a></li>
							<li><a
								href="${pageContext.request.contextPath }/userLogin.jsp"> <i
									class="pe-7s-lock"></i>志愿者登录
							</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin_login.jsp">
									<i class="pe-7s-lock"></i>管理员登录
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<header class="header-section-fixed">
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/jhcf/indexAction!showIndexInfo.go">
						<b>风</b>信子
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a
							href="/jhcf/indexAction!showIndexInfo.go">首页</a></li>
						<li class="dropdown"><a
							href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go"
							class="dropdown-toggle">公益项目 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">

								<li><a
									href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=4">公益培训</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=5">公益巡讲</a>
								</li>


								<li><a
									href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=2">探访慰问</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=3">儿童之家</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=6">运动公益</a>
								</li>
							</ul></li>
						<li><a
							href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go">公益活动</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath }/newsAction!getAllFrontNews.go">新闻动态</a>
						</li>
						<li class="dropdown"><a
							href="${pageContext.request.contextPath }/indexAction!showAnnounce.go"
							class="dropdown-toggle">秘书办 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=1">动态公告</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=3">财务公告</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=2">月度公告</a>
								</li>
							</ul></li>
						<li><a
							href="${pageContext.request.contextPath }/album/album.action">网站相册</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath }/tree_getAllFontTree.action">成长树</a>
						</li>

						<li class="dropdown"><a href="<%=path%>/shipinAll.action"
							class="dropdown-toggle">视频浏览 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="<%=path%>/docAll.action">资料下载</a></li>
							</ul></li>


						<li><a href="${pageContext.request.contextPath }/GoodsInfo_FindAll.action">公益义卖</a></li>
						<li><a
							href="https://baike.baidu.com/item/%E9%A3%8E%E4%BF%A1%E5%AD%90%E5%85%AC%E7%9B%8A/20474422?fr=aladdin">关于我们</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</header>








	<section class="service-section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="list-group">
						<h3>
							<i class="pe-7s-id"></i> <a
								href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=2">月度公告</a>
						</h3>
						<s:iterator var="xwzx" value="listAnnounces2">
							<a
								href="${pageContext.request.contextPath }/announcesAction!defaultAnnounces.go?announces.id=${xwzx.id}"
								class="list-group-item list-group-item-action flex-column align-items-start">
								<li><c:set var="hxyxwzx" value="${xwzx.title }"></c:set> <c:out
										value="${fn:substring(hxyxwzx,0,15)}..."></c:out> <fmt:parseDate
										value="${xwzx.date}" var="yearMonth" pattern="yyyy-MM-dd" /> <span
									style="float:right;"><fmt:formatDate
											value="${yearMonth}" pattern="yyyy-MM-dd" /></span></li>
							</a>
						</s:iterator>

						<a
							href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=2"
							class="list-group-item">阅读更多...</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="list-group">
						<h3>
							<i class="pe-7s-id"></i> <a
								href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=3">财务公布</a>
						</h3>
						<s:iterator var="xwzx" value="listAnnounces3">
							<a
								href="${pageContext.request.contextPath }/announcesAction!defaultAnnounces.go?announces.id=${xwzx.id}"
								class="list-group-item list-group-item-action flex-column align-items-start">
								<li><c:set var="hxyxwzx" value="${xwzx.title }"></c:set> <c:out
										value="${fn:substring(hxyxwzx,0,15)}..."></c:out> <fmt:parseDate
										value="${xwzx.date}" var="yearMonth" pattern="yyyy-MM-dd" /> <span
									style="float:right;"><fmt:formatDate
											value="${yearMonth}" pattern="yyyy-MM-dd" /></span></li>
							</a>
						</s:iterator>

						<a
							href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=3"
							class="list-group-item">阅读更多...</a>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="list-group">
						<h3>
							<i class="pe-7s-id"></i> <a
								href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=1">动态公告</a>
						</h3>
						<s:iterator var="xwzx" value="listAnnounces1">
							<a
								href="${pageContext.request.contextPath }/announcesAction!defaultAnnounces.go?announces.id=${xwzx.id}"
								class="list-group-item list-group-item-action flex-column align-items-start">
								<li><c:set var="hxyxwzx" value="${xwzx.title }"></c:set> <c:out
										value="${fn:substring(hxyxwzx,0,15)}..."></c:out> <fmt:parseDate
										value="${xwzx.date}" var="yearMonth" pattern="yyyy-MM-dd" /> <span
									style="float:right;"><fmt:formatDate
											value="${yearMonth}" pattern="yyyy-MM-dd" /></span></li>
							</a>
						</s:iterator>

						<a
							href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=1"
							class="list-group-item">阅读更多...</a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="service-section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="list-group">
						<h3>
							<i class="pe-7s-id"></i> 风信子的微笑
						</h3>
					</div>
				</div>
			</div>
		</div>
		</div>

		<div id="demo">

			<div id="indemo">
				<div id="demo1">

					<s:iterator var="photo" value="listphotos">
						<a href="#"><img width="170" height="120"
							src="${pageContext.request.contextPath }/images/${photo.image}"></img></a>

					</s:iterator>

				</div>
				<div id="demo2"></div>
			</div>
		</div>
		</section>
	<script>
		var speed = 20;
		var tab = document.getElementById("demo");
		var tab1 = document.getElementById("demo1");
		var tab2 = document.getElementById("demo2");
		tab2.innerHTML = tab1.innerHTML;
		function Marquee() {
			if (tab2.offsetWidth - tab.scrollLeft <= 0)
				tab.scrollLeft -= tab1.offsetWidth
			else {
				tab.scrollLeft++;
			}
		}
		var MyMar = setInterval(Marquee, speed);
		tab.onmouseover = function() {
			clearInterval(MyMar)
		};
		tab.onmouseout = function() {
			MyMar = setInterval(Marquee, speed)
		};
	</script>


	<!-- JQUERY -->
	<script src="js/vendor/jquery-1.11.2.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>