<%@page import="org.springframework.web.context.request.SessionScope"%>
  <%@page import="com.wgl.bean.VUser"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
    String aId=request.getParameter("activityId");
    String path = request.getContextPath();
    %>
        <!DOCTYPE html
<head>
        <meta charset="utf-8" />
        <title>活动报名页面</title>
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
                      <li>
                        <a>
                          <span>东莞市爱心志愿者协会&emsp;—</span>
                        </a>
                      </li>
                      <li>
                        <a>
                          <span>风信子服务队</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="header-top-menu">
                    <ul class="nav nav-pills navbar-right">
                      <li>
                        <a href="${pageContext.request.contextPath}/register.jsp">
                          <i class="pe-7s-lock"></i>志愿者注册</a>

                      </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/userLogin.jsp">
                          <i class="pe-7s-lock"></i>志愿者登录</a>
                      </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/admin_login.jsp">
                          <i class="pe-7s-lock"></i>管理员登录</a>
                      </li>
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
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="/jhcf/indexAction!showIndexInfo.go">
                    <b>风</b>信子</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav">
                    <li class="active">
                      <a href="/jhcf/indexAction!showIndexInfo.go">首页</a>
                    </li>
                    <li class="dropdown">
                      <a href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go" class="dropdown-toggle">公益项目
                        <b class="caret"></b>
                      </a>
                      <ul class="dropdown-menu">
                        <li class="kopie">
                          <a href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go">公益活动</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=4">公益培训</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=5">公益巡讲</a>
                        </li>
                        <li>
                          <a href="#">公益搭桥</a>
                        </li>
                        <li>
                          <a href="#">公益义卖</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=2">探访慰问</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=3">儿童之家</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=6">运动公益</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/newsAction!getAllFrontNews.go">新闻动态</a>
                    </li>
                    <li class="dropdown">
                      <a href="${pageContext.request.contextPath }/indexAction!showAnnounce.go" class="dropdown-toggle">秘书办
                        <b class="caret"></b>
                      </a>
                      <ul class="dropdown-menu">
                        <li>
                          <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=1">动态公告</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=3">财务公告</a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=2">月度公告</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                       <a href="${pageContext.request.contextPath }/album/album.action">网站相册</a>
                    </li>
                    <li>
                      <a href="${pageContext.request.contextPath }/tree_getAllFontTree.action">成长树</a>
                    </li>
                    <li>
                      <a href="#">拓展服务</a>
                    </li>
                    <li class="dropdown">
                      <a href="<%=path %>/shipinAll.action" class="dropdown-toggle">视频浏览
                        <b class="caret"></b>
                      </a>
                      <ul class="dropdown-menu">
                        <li>
                          <a href="<%=path %>/docAll.action">资料下载</a>
                        </li>
                      </ul>
                    </li>


                    <li>
                      <a href="${pageContext.request.contextPath }/banner_displayBanner.action">广告链接</a>
                    </li>
                    <li>
                      <a href="https://baike.baidu.com/item/%E9%A3%8E%E4%BF%A1%E5%AD%90%E5%85%AC%E7%9B%8A/20474422?fr=aladdin">关于我们</a>
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
                  <form action="${pageContext.request.contextPath }/activityEnrollAction!enroll.go?activityId=<%=aId %>" name="myForm" method="post"
                    enctype="multipart/form-data" class="form-group">
                    <input type="hidden" name="activityEnroll.name" value="${vuser.realname}">
                    <input type="hidden" name="activityEnroll.gender" value="${vuser.gender}">
                    <label>手机号：</label>
                    <input type="text" name="activityEnroll.telephone" value="${vuser.phone}" class="form-control" />
                    <label>QQ号：</label>
                    <input type="text" name="activityEnroll.qq" value="${vuser.qqnumber}" class="form-control">
                    <label>交通工具：</label>
                    <select name="activityEnroll.carriage" class="form-control">
                      <option value="坐公交车">坐公交车</option>
                      <option value="自己开车">自己开车</option>
                      <option value="自驾提供拼车">自驾提供拼车</option>
                      <option value="骑自行车">骑自行车</option>
                      <option value="步行">步行</option>
                      <option value="统一安排车(免费)">统一安排车(免费)</option>
                      <option value="负责人租车(分摊)">负责人租车(分摊)</option>
                    </select>
                    <label>担任角色</label>
                    <select name="activityEnroll.role" class="form-control">        
                      <option value="参与队员">参与队员</option>
                      <option value="首次参加新人培训">首次参加新人培训</option>
                      <option value="活动负责人">活动负责人</option>
                      <option value="活动协助执行人员">活动协助执行人员</option>
                      <option value="签到负责人">签到负责人</option>
                      <option value="录像工作人员">录像工作人员</option>
                      <option value="拍照工作人员">拍照工作人员</option>
                      <option value="后勤协助人员">后勤协助人员</option>
                      <option value="活动小组负责人">活动小组负责人</option>
                      <option value="节目表演人员">节目表演人员</option>
                      <option value="宣誓注册">宣誓注册</option>
                      <option value="工作人员">工作人员</option>
                      <option value="礼仪人员">礼仪人员</option>
                      <option value="观礼人员">观礼人员</option>
                      <option value="一星级">一星级</option>
                      <option value="二星级">二星级</option>
                      <option value="三星级">三星级</option>
                      <option value="四星级">四星级</option>
                      <option value="五星级">五星级</option>
                    </select>                    
        
                    <label>报名说明：</label>
                    <textarea name="activityEnroll.content" class="form-control"></textarea>
                    <button type="submit" class="btn btn-success btn-block">立即报名</button>
                  </form>
              </div>
              <div class="col-md-4"></div>
            </div>
          </div>
          <footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p class="center">
						Made with <i class="fa fa-heart"></i> by <a
							href="http://www.sise.com.cn/" target="_blank">余建油、伍国良、蓝沛</a>.
						All Rights Reserved
					</p>
				</div>
			</div>
		</div>
	</footer>
          <script src="js/vendor/jquery-1.11.2.min.js"></script>
          <script src="js/vendor/bootstrap.min.js"></script>
          <script src="js/isotope.pkgd.min.js"></script>
          <script src="js/owl.carousel.min.js"></script>
          <script src="js/wow.min.js"></script>
          <script src="js/custom.js"></script>
        </body>

        </html>