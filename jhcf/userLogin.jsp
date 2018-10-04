<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%@taglib uri="/struts-tags" prefix="s"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

      <!DOCTYPE HTML>
      <html>

      <head>
        <base href="<%=basePath%>">
        <meta charset="utf-8">
        <title>会员登录</title>
        <link rel="stylesheet" href="css/style.css">
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
						<li><a href="#">成长树</a></li>

						<li class="dropdown"><a href="<%=path%>/shipinAll.action"
							class="dropdown-toggle">视频浏览 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="<%=path%>/docAll.action">资料下载</a></li>
							</ul></li>


						<li><a href="">公益义卖</a></li>
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
        <div class="container">
          <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
              <form action="Login.action" method="post">
                <div class="form-group">
                  <label>用户名:</label>
                  <input type="text" name="username" class="form-control" />
                  <s:fielderror fieldName="username" />
                </div>
                <div class="form-group">
                  <label>密码:</label>
                  <input type="password" name="password" class="form-control" />
                  <s:fielderror fieldName="password" />
                </div>
                <div class="form-group">
                  <label>验证码:</label>
                  <input type="text" name="checkCode" maxlength="4" class="form-control" />
                  <img id="image" border="0" onclick="refresh()" src="createImageAction.action" title="看不清，换一张">
                   <b><font color="red">${result }</font></b>
                  <s:fielderror fieldName="checkCode" />
                 
                </div>
                <div class="form-group">
                  <input type="submit" value="登录" class="form-control" />
                </div>
              </form>
            </div>
            <div class="col-md-4"></div>
          </div>
        </div>

        <script type="text/javascript">
          function refresh() {
            //IE存在缓存,需要new Date()实现更换路径的作用    
            document.getElementById("image").src = "createImageAction.action?+ Math.random()"
              + new Date();
          }
        </script>
      </body>

      </html>