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
  <SCRIPT type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></SCRIPT>
   <style> 
   .container{
     margin-top: 10px;
     margin-left:0px;
     margin-right:0px;
     width:98%;
     font-size:15px;
   }
   .span12{
     width:98%;
   }
    .STYLE9 {
	color:#0066FF;
	font-size: 17px; 
	font-weight: bold;
	text-align: center;
}
    .labelroomnumber{
      position: relative;
      font-size: 15px;
      float: left;
      margin-top: 15px;
    }
    
    .textone{
    margin-top:12px;
    }
    
    .rightOne{
    margin-right: 50px;
    font-size:15px;
    }
    
    .table th,.table td{
       text-align: center; 
    }
    
    .theadone{
     background-color: #CCFF99;
    }
    
    .roomnumberwidth{
      width:60%;
    }
    
    .heigthone{
      height:25px;
    }
    .widthone{
     width:100%;
    }
    .widthtwo{
     width:100%;
    }
    
    .XuanXiangKa{
      .active
    }
  
  </style>
  
  <body>
  <div class="container" style="height:630px;overflow-x:auto;">
    
   
    
    <div class="span12">
    <div class="tabbable" >  <!-- style="border:1px solid red"  -->
     
      <div class="tab-content">
        <div class="tab-pane active" id="tab1">
            <label style="float:left;">活动标题:</label>
		    <form action="${pageContext.request.contextPath }/activitysAction!QueryActivityInfo.go" method="post" style="width:18%;float: left;">
			   <input id="txtnameid" name="title" class="roomnumberwidth" style="border-radius:0px; border-top-left-radius:4px; border-bottom-left-radius:4px;height:26px;" type="text" placeholder="请输入关键字" >
			   <div class="input-append">  
			      <button type="submit" class="btn-success" style="margin-left:-4px;height:26px;"><li class="icon-search icon-white"></li>查询</button>
			   </div>
		    </form>
		   
		    <div class="span1" style="margin-right: 4px;">
		     
        </div>
        <div class="tab-pane" id="tab2">
       
        <div class="span12" style="margin-left:0px;">
          <div class="row-fluid">
             
            </div>
         </div>
         
    <div class="span12">
    <div class="dgvone">
       <table>
	      <thead class="theadone">
	        <tr>
	          <th width="200px" >活动标题</th>
	          <th width="200px" >活动发布者</th>
	          <th width="200px">活动开始时间</th>
	          <th width="200px">活动结束时间</th>
	          <th width="200px">活动报名截止时间</th>
	          <th width="200px">活动需要人数</th>
	           <th width="200px">活动负责人</th>
	          <th width="200px">活动负责人电话</th>
	          <th width="200px">电子签到负责人</th>
	          <th width="200px">电子签到负责人电话</th>
	           <th width="200px">集合地点</th>
	          <th width="200px">活动集合时间</th>
	          <th width="300px">相关图片</th>
	          <th width="400px">活动内容</th>
	          <th width="200px" >对应操作</th>
	        </tr>
	      </thead>
	      <tbody id="tbody">
	        <s:iterator var="allactivitys" value="listActivitys">
          <s:set var="cc" value="%{#allactivitys.cont}"></s:set>
           <s:set var="gg" value="%{#allactivitys.title}"></s:set>
			        <tr style="color: red;">
			         <td><c:choose>
            		<c:when test="${fn:length(gg) >7}">
            			<c:out value="${fn:substring(gg, 0,7)}......"></c:out>
            		</c:when>
            		<c:otherwise>
            			<c:out value="${gg}"></c:out>
            		</c:otherwise>
            	</c:choose></td>
		          <td>${allactivitys.editer}</td>
		          <td>${allactivitys.startactivity}</td>
		          <td>${allactivitys.endactivity}</td>
		          <td>${allactivitys.enrollend}</td>
		          <td>${allactivitys.number}</td>
		          <td>${allactivitys.activitycharge}</td>
		          <td>${allactivitys.chargephone}</td>
		          <td>${allactivitys.signcharge}</td>
		            <td>${allactivitys.signphone}</td>
		          <td>${allactivitys.address}</td>
		          <td>${allactivitys.gathertime}</td>
		          <td><img width="120" height="67" src="${pageContext.request.contextPath }/uploadImages/${allactivitys.images}"></img></td>
		          <td><c:choose>
            		<c:when test="${fn:length(cc) > 10}">
            			<c:out value="${fn:substring(cc, 0, 10)}......"></c:out>
            		</c:when>
            		<c:otherwise>
            			<c:out value="${cc}"></c:out>
            		</c:otherwise>
            	</c:choose></td>
		          <td><a class="STYLE4" href="${pageContext.request.contextPath }/activitysAction!getActivitysById.go?activitys.id=${allactivitys.id}">
		          <img src="images/edt.gif" width="16" height="16" />编辑</a></td>
		       
		        
			        </tr>
		      		       
			        </s:iterator>
	      </tbody>
	    </table>
   
    </div>
    
    
    
    
     <div class="STYLE9"">
      <td  width="12" align="center">页次:${currentPage}/${sumPage}页&nbsp;每页${pageSize}条信息共${count}条
        
        
        
        
        
        <a class="STYLE9" href="${pageContext.request.contextPath}/activitysAction!getAllActivitys.go?currentPage=1">首页</a>
		
		<s:if test="currentPage==1">上一页</s:if>
		
		
		<s:else>
		<a class="STYLE9" href="${pageContext.request.contextPath }/activitysAction!getAllActivitys.go?currentPage=${currentPage-1}">上一页</a>
		</s:else>
		
		<s:if test="currentPage>=sumPage">下一页</s:if>
		
		<s:else>
		<a class="STYLE9" href="${pageContext.request.contextPath }/activitysAction!getAllActivitys.go?currentPage=${currentPage+1}">下一页</a>
		</s:else>
		
		
		<a class="STYLE9" href="${pageContext.request.contextPath }/activitysAction!getAllActivitys.go?currentPage=${sumPage}">尾页</a></td>
    </div>
  </div>
    
   
  </body>
</html>
