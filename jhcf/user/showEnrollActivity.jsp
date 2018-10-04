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
           <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>会员信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


</head>

<body>
	<div class="warp">
		<!--文字禁止复制 onselectstart-->
		<div class="header" onselectstart="return false">
			<%@include file="header.html"%>
			<div class="main">
				<div class="overview">
					<div class="overview-title">
						<b><font color="red">欢迎您：${vuser.realname }&nbsp;&nbsp;&nbsp;&nbsp;是否已入队培训：${vuser.status eq 0?"未参加入队培训":"已参加入队培训" }</font></b>
					</div>
					<div class="overview-info">
						<!--  
                        <ul>
                            <li>
                                <div>用户名</div>
                                <div>jan</div>
                            </li>
                            <li>
                                <div>评论</div>
                                <div>0</div>
                            </li>
                            <li>
                                <div>友链</div>
                                <div>0</div>
                            </li>
                            <li>
                                <div>昨日访问量</div>
                                <div>0</div>
                            </li>
                        </ul>
                        -->
					</div>
				</div>
				<div class="overview">
					<div class="overview-title">个人信息</div>
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
		</div>
	</div>

</body>

</html>
           