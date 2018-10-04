<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="css/comom.css"/>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<title>qa</title>
<script language="javascript" type="text/javascript" src="js/jquery-1.4.2.js"></script>
<!--<script language="javascript" type="text/javascript" src="js/zzsc.js"></script>  -->
<script language="javascript" type="text/javascript" src="js/index.js"></script>
</head>
<body>

    
    
  <div id="tabcontentss1">
  		 <ul class="menu_id">
  		 <s:iterator var="xwzx" value="listNews">
            	<a href="${pageContext.request.contextPath }/newsAction!defaultNews.go?news.id=${xwzx.id}">
            	<li>
            		<c:set var="hxyxwzx" value="${xwzx.title }"></c:set>
            		<c:out value="${fn:substring(hxyxwzx,0,30)}..."></c:out>
            		<span>${xwzx.date}</span>
            	</li></a>
     	 </s:iterator>
            </ul>
  </div>
   
     <div class="clear"></div>
        
            <div class="more_news">
            	<a href="${pageContext.request.contextPath }/newsAction!getAllFrontNews.go">更多新闻</a>
            </div>
        </div>
        <!--con_mid-->
       
</body>
</html>