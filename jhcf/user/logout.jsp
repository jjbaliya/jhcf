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
					<div class="overview-title"></div>
						   <%
      response.setHeader("refresh","1;URL=fxz_index.jsp");
      session.invalidate();
     %>
     <h3>你已经成功退出本系统,即将跳转到首页</h3>
     <h3>如果没有跳转请点击<a href="fxz_index.jsp">这里</a></h3>
				</div>



			</div>
		</div>
</body>

</html>


