<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	
<!--   <link rel="stylesheet" href="${ctx}/css/roomset/roomset.css" type="text/css"></link> -->
  <link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.css" type="text/css"></link>
  <link rel="stylesheet" href="${ctx}/css/page.css" type="text/css"></link>
  <link href="${ctx}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">  <!-- start 响应式布局要添加的 -->
  <script src="${ctx}/bootstrap/js/jquery-3.1.1.min.js"></script>
  <script src="${ctx}/bootstrap/js/bootstrap.js"></script>
  <script type="text/javascript" src="${ctx}/js/page.js"></script>
  <script type="text/javascript" src="${ctx}/js/common.js"></script>
   <style> 
   .container{
     margin-top: 10px;
     margin-left:0px;
     margin-right:0px;
     width:98%;
     font-size:15px;
      text-align: center; 
   }
   
    .STYLE9 {
	color:#0066FF;
	font-size: 17px; 
	font-weight: bold;
	text-align: center;
}
  
 
  </style>
  
  <body>
  <s:iterator var="news" value="listNews">
 </s:iterator>
<form action="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all1.go" method="post">
  <div class="container" style="height:630px;overflow-x:auto;">
     
		 <p>   <select class="STYLE9"  name="groupname">
           
            <option value=1>新闻动态</option>
            <option value=2>探访慰问新闻</option>
            <option value=3>儿童之家新闻</option>
            <option value=4>公益培训新闻</option>
            <option value=5>公益巡讲新闻</option>
            <option value=6>运动公益新闻</option>
            
          </select></p>
            <button type="submit" class="btn btn-success">查询</a>  
            
            </form>
  </body>
</html>
