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
              <title>查询志愿者已经报名的活动情况页面</title>
              <meta name="viewport" content="width=device-width, initial-scale=1">
              <link rel="stylesheet" href="css/style.css">
            </head>

            <body>
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
                        <b>删除报名</b>
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
                          <span class="STYLE1">${ae.activity.count}</span>
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
                          <span class="STYLE1">删除报名</span>
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
                          <span class="STYLE1">取消请假</span>
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
                页次:${currentPage}/${sumPage_query}页&nbsp;每页${pageSize}条信息共${countenrollquery}条
                <a class="STYLE9" href="${pageContext.request.contextPath}/activityEnrollAction!queryEnrollInfo.go?currentPage=1&&userId=${vuser.id}">首页</a>
                <a class="STYLE9" href="${pageContext.request.contextPath }/activityEnrollAction!queryEnrollInfo.go?currentPage=${currentPage-1}&&userId=${vuser.id}">上一页</a>
                <a class="STYLE9" href="${pageContext.request.contextPath }/activityEnrollAction!queryEnrollInfo.go?currentPage=${currentPage+1}&&userId=${vuser.id}">下一页</a>
                <a class="STYLE9" href="${pageContext.request.contextPath }/activityEnrollAction!queryEnrollInfo.go?currentPage=${sumPage_query}&&userId=${vuser.id}">尾页</a>               </td>
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