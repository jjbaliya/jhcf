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
   <style>
   
   .container{
     margin-top: 10px;
   }
   
    .labelroomnumber{
      position: relative;
      font-size: 17px;
      float: left;
      margin-top: 15px;
    }
    .STYLE9 {
	color:#0066FF;
	font-size: 17px; 
	font-weight: bold;
	text-align: center;
}
    .textone{
    margin-top:12px;
    }
    
    .rightOne{
    margin-right: 50px;
    font-size:16px;
    }
    
    .table th,.table td{
       text-align: center; 
    }
    
    .theadone{
     background-color: #CCFF99;
    }
    
    .dgvone{
      margin-top: 12px;
    }
    
    .roomnumberwidth{
      width:70%;
    }
    
  
  </style>
  <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
 </head>
  <body>
  
 <div class="container" >
   
    <br>
    <div class="dgvone">
       <table class="table table-condensed table-bordered table-striped" id="tableid">
	      <thead class="theadone">
	        <tr>
	          <th > 新闻标题:</th>
	          <th >新闻来源</th>
	          <th >相关图片</th>
	          <th >新闻内容</th>
	          <th >添加时间</th>
	          <th >所属新闻类型</th>
	          <th >对应操作</th>
     
	        </tr>
	      </thead>
	      <tbody id="tbody">
	         <s:iterator var="allnews" value="listNews">
	           <s:set var="cc" value="%{#allnews.cont}"></s:set>
		        <tr>
		          <td>${allnews.title}</td>
		          <td>${allnews.source}</td>
		          <td><img width="50" height="20" src="${pageContext.request.contextPath }/uploadImages/${allnews.images}"></img></td>
		          <td><c:choose>
            		<c:when test="${fn:length(cc) > 10}">
            			<c:out value="${fn:substring(cc, 0, 10)}......"></c:out>
            		</c:when>
            		<c:otherwise>
            			<c:out value="${cc}"></c:out>
            		</c:otherwise>
            	</c:choose></td>
		          <td>${allnews.date}</td>
		          <td><c:choose>
					<c:when test="${allnews.groupname eq 1}">动态新闻</c:when>
					<c:when test="${allnews.groupname eq 2}">探访慰问新闻</c:when>
					<c:when test="${allnews.groupname eq 3}">儿童之家新闻</c:when>
					<c:when test="${allnews.groupname eq 4}">公益培训新闻</c:when>
					<c:otherwise>
						<c:choose>
							
							<c:when test="${allnews.groupname eq 5}">公益巡讲新闻</c:when>
							<c:otherwise>运动公益新闻</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose></td>
		          <td><a class="STYLE4" href="${pageContext.request.contextPath }/newsAction!getNewsById.go?news.id=${allnews.id}"><img src="images/edt.gif" width="16" height="16" />编辑</a>&nbsp; &nbsp;<a class="STYLE4" onClick="{if(confirm('此操作将删除当前记录!删除后将不能恢复,您确定执行的操作吗?')){return true;}return false;}" href="${pageContext.request.contextPath }/newsAction!deleteNews.go?news.id=${allnews.id}"><img src="images/del.gif" width="16" height="16" />删除</a></td>
		          
		        </tr>
	         </s:iterator>
	          <table>
    <form action="${pageContext.request.contextPath }/newsAction!queryNewsByGroupname.go?groupname=${allnews.groupname}" method="post" style="float: left;">
	    <tr>
		  <td> <label class="labelroomnumber">新闻标题：</label></td>
		    
			  <td> <input id="txtnameid" name="title" class="textone roomnumberwidth" style="border-radius:0px; border-top-left-radius:4px; border-bottom-left-radius:4px;height:26px;" type="text" placeholder="请输入关键字"></td>
			<td> <label class="labelroomnumber"> 新闻发布时间:</label></td>
		  
			  <td width="50%"> <input id="txtnameid" name="date" class="textone roomnumberwidth"  onClick="WdatePicker()"  style="border-radius:0px; border-top-left-radius:4px; border-bottom-left-radius:4px;height:26px;" type="text" placeholder="请输入关键字"><font color=red>&lt;- 点我弹出日期</font></td>  
			   
			     <td> <button type="submit" class="btn-success textone" style="margin-left:-4px;height:26px;"><li class="icon-search icon-white"></li>搜索</button></td>
			  </tr>
		    </form>
	    </table>
    
	      </tbody>
	    </table>
    </div>

    <div class="STYLE9"">
      <td  width="12" align="center">页次:${currentPage}/${sumPage}页&nbsp;每页${pageSize}条信息共${count}条
        
        
        
        
        
        <a class="STYLE9" href="${pageContext.request.contextPath}/newsAction!getNewsByGroupname_all1.go?currentPage=1&&groupname=${allnews.groupname}">首页</a>
		
		<s:if test="currentPage==1">上一页</s:if>
		
		
		<s:else>
		<a class="STYLE9" href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all1.go?currentPage=${currentPage-1}&&groupname=${allnews.groupname}">上一页</a>
		</s:else>
		
		<s:if test="currentPage>=sumPage">下一页</s:if>
		
		<s:else>
		<a class="STYLE9" href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all1.go?currentPage=${currentPage+1}&&groupname=${allnews.groupname}">下一页</a>
		</s:else>
		
		
		<a class="STYLE9" href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all1.go?currentPage=${sumPage}&&groupname=${allnews.groupname}">尾页</a></td>
    </div>
  </div>
     
  </body>
</html>
