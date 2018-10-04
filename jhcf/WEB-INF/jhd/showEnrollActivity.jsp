<%@page import="java.util.List"%>
  <%@page import="com.wgl.bean.ActivityEnroll"%>
    <%@page import="java.util.ArrayList"%>
      <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="/struts-tags" prefix="s" %>
          <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
%>
            <!DOCTYPE html>

            <head>
              <meta charset="utf-8" />
              <title>查看志愿者已经报名的活动情况页面</title>
              <meta name="viewport" content="width=device-width,initial-scale=1">              
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
                          <a href="${pageContext.request.contextPath }/adminAction!login.go">
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
                        <a href="${pageContext.request.contextPath}/activitysAction!getAllFrontActivitys.go" class="dropdown-toggle">公益项目
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                          <li class="kopie">
                            <a href="activitys.jsp">公益活动</a>
                          </li>
                          <li>
                            <a href="#">公益培训</a>
                          </li>
                          <li>
                            <a href="#">公益巡讲</a>
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
                            <a href="">动态公告</a>
                          </li>
                          <li>
                            <a href="">财务公告</a>
                          </li>
                          <li>
                            <a href="">月度公告</a>
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
              <form action="${pageContext.request.contextPath }/activityEnrollAction!queryEnrollInfo.go?userId=${vuser.id}" method="post">

                <table class="table">
                  <tr>
                    <td colspan="12">
                      活动标题:
                      <input type=text name="title" />&nbsp; 活动报名时间:
                      <input class="Wdate" name="enrolltime" type="text" readonly onClick="WdatePicker()">
                      <font color=red>&lt;- 点我弹出日期</font>
                      <input type=hidden name=currentPage value="1" />
                      <input type=submit value="查询" />
                    </td>
                  </tr>
                  <tr>
                    <td width="8%" height="22" bgcolor="#FFFFFF">
                      <div align="center">
                        <span class="STYLE1">
                          <b>报名ID</b>
                        </span>
                      </div>
                    </td>
                    <td width="8%" height="22" bgcolor="#FFFFFF">
                      <div align="center">
                        <span class="STYLE1">
                          <b>活动ID</b>
                        </span>
                      </div>
                    </td>
                    <td width="15%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>活动名称</b>
                      </div>
                    </td>
                    <td width="6%" height="22" bgcolor="#FFFFFF">
                      <div align="center">
                        <span class="STYLE1">
                          <b>需求人数</b>
                        </span>
                      </div>
                    </td>
                    <td width="8%" height="22" bgcolor="#FFFFFF">
                      <div align="center">
                        <span class="STYLE1">
                          <b>报名人数</b>
                        </span>
                      </div>
                    </td>
                    <td width="10%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>活动状态</b>
                      </div>
                    </td>
                    <td width="8%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>报名时间</b>
                      </div>
                    </td>
                    <td width="10%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>报名状态</b>
                      </div>
                    </td>
                   
                    <td width="6%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>我要请假</b>
                      </div>
                    </td>
                    <td width="6%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>取消请假</b>
                      </div>
                    </td>
                    <td width="6%" height="22" bgcolor="#FFFFFF" class="STYLE1">
                      <div align="center">
                        <b>报名清单</b>
                      </div>
                    </td>
                  </tr>

                  <s:iterator id="ae" value="#request.activitys">
                    <tr>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.id }</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.activity.id}</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.activity.title}</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.activity.number }</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.activity.number}</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.activity.status}</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.enrolltime }</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">${ae.status}</span>
                        </div>
                      </td>
                    
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">
                            <a href="${pageContext.request.contextPath }/activityEnrollAction!activityaskforleave.go?id=${ae.id}"
                              onclick="return confirm('确定要请假？')">我要请假</a>
                          </span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1"><a href="${pageContext.request.contextPath }/activityEnrollAction!activitycancelforleave.go?id=${ae.id}" onclick="return confirm('确定要取消请假？')">取消请假</span>
                        </div>
                      </td>
                      <td height="12" bgcolor="#FFFFFF">
                        <div align="center">
                          <span class="STYLE1">
                            <a href="${pageContext.request.contextPath }/activityEnrollAction!getActivityEnrollById.go?activityId=${ae.activity.id}">报名清单</a>
                          </span>
                        </div>
                      </td>
                    </tr>
                  </s:iterator>

                </table>
                页次:${currentPage}/${sumPage}页&nbsp;每页${pageSize}条信息共${count_user}条
                <a class="STYLE9" href="${pageContext.request.contextPath}/activityEnrollAction!getActivityByUserId.go?currentPage=1&&userId=${vuser.id}">首页</a>

                <s:if test="currentPage==1">上一页</s:if>


                <s:else>
                  <a class="STYLE9" href="${pageContext.request.contextPath }/activityEnrollAction!getActivityByUserId.go?currentPage=${currentPage-1}&&userId=${vuser.id}">上一页</a>
                </s:else>

                <s:if test="currentPage>=sumPage">下一页</s:if>

                <s:else>
                  <a class="STYLE9" href="${pageContext.request.contextPath }/activityEnrollAction!getActivityByUserId.go?currentPage=${currentPage+1}&&userId=${vuser.id}">下一页</a>
                </s:else>


                <a class="STYLE9" href="${pageContext.request.contextPath }/activityEnrollAction!getActivityByUserId?currentPage=${sumPage}&&userId=${vuser.id}">尾页</a>
                </td>
              </form>
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
            <script src="My97DatePicker/WdatePicker.js"></script>
            </body>

            </html>