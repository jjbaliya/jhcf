<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>广告显示</title>
<link rel="stylesheet" type="text/css" href="css/banner_css/global.css"/>
<link rel="stylesheet" type="text/css" href="css/banner_css/slider.css"/>
</head>
<body>
    <div style="height:100px;"></div>
<!--  轮播动画开始  -->
<div id="slider">
	<!-- 切换区域开始 -->
    <ul class="view">
    	 <s:iterator var="listfiveBanner" value="fiveBanner">
    	<li>
        	<a href="${listfiveBanner.link }">
    			<img src="${pageContext.request.contextPath }/ad_image_upload/${listfiveBanner.images}"/>
    		</a>
        </li>
        </s:iterator>
    </ul>
    <ul class="control">
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;"></a></li>
    </ul>
	<!-- 触发器 -->

    <!-- 上下翻页切换按钮 -->
    <div id="btn_prev"></div>
	<div id="btn_next"></div>
</div>
<!--  轮播动画结束  -->


<script type="text/javascript" src="js/banner_js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/banner_js/onchange.js"></script>
<script type="text/javascript">
$(function(){
	$('#slider .view li').soChange({
        thumbObj:'#slider .control li',
        thumbNowClass:'current',//切换时使用样式
		btnPrev:'#btn_prev',//上一张按钮
		btnNext:'#btn_next',//下一张按钮		
		slideTime: 1000,//幻灯片换片时间
		autoChange: true,
        changeTime:2000,
		
    });	
});
</script>
</body>
</html>



