<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
      <%
      String path = request.getContextPath();
      %>
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="utf-8" />  
          <s:set var="list" value="tree"></s:set>        
          <title>${list.realName }</title>
          <meta name="viewport" content="width=device-width, initial-scale=1">
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

	<header class="header-section">
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

						<li class="dropdown"><a href="<%=path %>/shipinAll.action"
							class="dropdown-toggle">视频浏览 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="<%=path %>/docAll.action">资料下载</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath }/GoodsInfo_FindAll.action">公益义卖</a>
						</li>
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
          <!--gongsigk_end-->
          
          <div class="container">
            <div class="row">
              <div class="col-md-2"></div>
              <div class="col-md-8">
              	 
    <table class="table">  
        <tr>  
            <td colspan="3" bgcolor="#9FCDEA">个人资料</td>  
        </tr>  
        <tr>  
            <td>姓 名：${list.realName }</td>  
            <td>性 别：${list.gender }</td>  
            <td rowspan="3" align="center" valign="middle">
            <img src="${pageContext.request.contextPath }/Growing_tree_images/${list.images}" style="height: 161px; width: 166px"/>
            </td>  
        </tr>  
        <tr>  
            <td>出 生：${list.birth }</td>  
            <td>民 族：${list.ethnic }</td>  
        </tr>  
        <tr>  
            <td colspan="2">确立为帮扶对象时间：${list.rescueTime }</td>  
           
        </tr> 
        <tr>
        	 
            <td colspan="3" bgcolor="#9FCDEA">成长经历</td>  
        </tr>  
        <tr>
        	 
            <td colspan="3">
            	<div class="newscon_text" style="height: 300px; ">
            	${list.content }
    	
    </div>
            </td>  
        </tr>  
        </tr>        
   	</table>
              </div>            
              <div class="col-md-2"></div>
            </div>                            
          </div>
          
            <script src="js/vendor/jquery-1.11.2.min.js"></script>
            <script src="js/vendor/bootstrap.min.js"></script>
            <script src="js/isotope.pkgd.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/wow.min.js"></script>
            <script src="js/custom.js"></script>
        </body>

        </html>