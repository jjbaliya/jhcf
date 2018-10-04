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

<title>会员信息修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script src="js/userManger/login.js"></script>
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
<form action="${pageContext.request.contextPath }/updateInfo.action?id=${vuser.id }" method="post">
					<table class="overview-table">
						
						<tr>
							<input type="hidden" name="username" value="${vuser.username }"/>
							<input type="hidden" name="password" value="${vuser.password }"/>
							<input type="hidden" name="status" value="${vuser.status }"/>		
							<td>真实姓名：</td>
							<td><input type="text" name="realname"
								value="${vuser.realname }" pattern="[\u4e00-\u9fa5]{2,4}"
								title="名字格式不正确，只允许输入中文。" /></td>
							<td><b><font color="red">${result }</font></b></td>
						</tr>
						<tr>
							<td>身份证号码：</td>
							<td><input type="text" name="idcard"
								value="${vuser.idcard }"
								pattern="^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$"
								title="身份证号码格式不正确" /></td>
						</tr>
						<tr>
							<td>出生日期：</td>
							<td><input type="text" name="birthday"
								value="<fmt:formatDate value="${vuser.birthday}"
									pattern="yyyy-MM-dd" />" /></td>
						</tr>
						<tr>
							<td>性别：</td>
							<td><input type="text" name="gender"
								value="${vuser.gender }" /></td>
						</tr>
						<tr>
							<td>婚姻状况：</td>
							<td><input type="text" name="marital"
								value="${vuser.marital }" /></td>
						</tr>
						<tr>
							<td>教育程度：</td>
							<td><input type="text" name="education"
								value="${vuser.education }" /></td>
						</tr>
						<tr>
							<td>职业：</td>
							<td><input type="text" name="job" value="${vuser.job }"
								pattern="^[A-Za-z0-9\u4e00-\u9fa5]+$"
								title="职业输入格式不正确，只可输入中文、英文、数字。" /></td>
						</tr>
						<tr>
							<td>通讯地址：</td>
							<td><input type="text" name="address"
								value="${vuser.address }" pattern="^[a-zA-Z\u4e00-\u9fa5]+$"
								title="通讯地址输入格式不正确，只能输入中文和数字。" /></td>
						</tr>
						<tr>
							<td>手机号码：</td>
							<td><input type="text" name="phone" value="${vuser.phone }"
								pattern="^134[0-8]\d{7}$|^13[^4]\d{8}$|^14[5-9]\d{8}$|^15[^4]\d{8}$|^16[6]\d{8}$|^17[0-8]\d{8}$|^18[\d]{9}$|^19[8,9]\d{8}$"
								title="手机号码格式不正确" /></td>
						</tr>
						<tr>
							<td>腾讯QQ：</td>
							<td><input type="text" name="qqnumber"
								value="${vuser.qqnumber }" pattern="^\d{5,10}$"
								title="QQ号码格式不正确" /></td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td><input type="text" name="email" value="${vuser.email }"
								pattern="[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?"
								title="输入的邮箱格式不正确!" placeholder="Email格式不正确，例如web@sohu.com" />
							</td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="修改信息"
								class="login-btn" style="width: 276px; "/></td>
						</tr>
						
					</table>
</form>
				</div>



			</div>
		</div>
</body>

</html>
