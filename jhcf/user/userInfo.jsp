<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

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
					<table class="overview-table">
						<tr>
							<td>真实姓名：</td>
							<td>${vuser.realname }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>性别：</td>
							<td>${vuser.gender}</td>
						</tr>
						<tr>
							<td>出生日期：</td>
							<td><fmt:formatDate value="${vuser.birthday}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
						<tr>
							<td>婚姻状况：</td>
							<td>${vuser.marital}</td>
						</tr>
						<tr>
							<td>教育程度：</td>
							<td>${vuser.education}</td>
						</tr>
						<tr>
							<td>职业：</td>
							<td>${vuser.job}</td>
						</tr>

					</table>
				</div>
				<div class="overview">
					<div class="overview-title">通讯信息</div>
					<table class="overview-table">
						<tr>
							<td>通讯地址：</td>
							<td>${vuser.address }</td>
						</tr>
						<tr>
							<td>手机号码：</td>
							<td>${vuser.phone}</td>
						</tr>
						<tr>
							<td>腾讯QQ：</td>
							<td>${vuser.qqnumber}</td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td>${vuser.email}</td>
						</tr>
						<tr>
							<td>教育程度：</td>
							<td>${vuser.education}</td>
						</tr>
						<tr>
							<td>职业：</td>
							<td>${vuser.job}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
