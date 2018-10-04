<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>My JSP 'news.jsp' starting page</title>

  </head>
  <body>
  <!--新闻动态 -->
   <a  href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=1">新闻动态</a>
  </body>
</html>
