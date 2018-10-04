<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>密码修改</title>

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
			<div class="login-warp">
				<div class="login">
					<div class="login-title">
						<h1>密码修改</h1>
					</div>
					<div class="login-form">
						<form
							action="${pageContext.request.contextPath }/updatePassowrd.action?id=${vuser.id }"
							method="post">
							&nbsp;&nbsp;&nbsp; 新密码：<input type="password" name="password"
								id="password" pattern="^[0-9A-Za-z]{6,11}$" title="密码格式不正确"
								placeholder="必须且只含有数字和字母，6-11位" required="required"><br />
							确认密码：<input type="password" name="password1" id="password1"
								pattern="^[0-9A-Za-z]{6,11}$" title="密码格式不正确"
								placeholder="必须且只含有数字和字母，6-11位" required="required"> <b><font
								color="red">${result }</font></b><br />
							<button type="submit" value="修改密码" class="login-btn">修改</button>
							<button type="reset" value="重置" class="login-btn">重置</button>
						</form>
					</div>
				</div>
			</div>



		</div>
</body>

</html>
