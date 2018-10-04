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
   
    <div class="dgvone">
       <table class="table table-condensed table-bordered table-striped" id="tableid">
	      <thead class="theadone">
	        <tr>
	         <th>ID</th>
   			<th>姓名</th>
   			<th>性别</th>
   			<th>出生</th>
   			<th>民族</th>
   			<th>相片</th>
   			<th>成长经历</th>
   			<th>帮扶时间</th>
   			<th  style="width: 96px; "><center>对应操作
	        </tr>
	      </thead>
	      <tbody id="tbody">
	         <s:iterator var="list" value="allTrees">
   		  <s:set var="cc" value="%{#list.content}"></s:set> 
		        <tr>
		          <td>${list.id }</td>
		          <td>${list.realName }</td>
		          
		          <td>${list.gender }</td>
		          <td>${list.birth }</td>
		            <td>${list.ethnic }</td>
		          <td><img width="50" height="20" src="${pageContext.request.contextPath }/Growing_tree_images/${list.images}"/></td>
		          <td><c:choose>
            		<c:when test="${fn:length(cc) > 10}">
            			<c:out value="${fn:substring(cc, 0, 10)}......"></c:out>
            		</c:when>
            		<c:otherwise>
            			<c:out value="${cc}"></c:out>
            		</c:otherwise>
            	</c:choose>
         </td>
		          <td>${list.rescueTime }</td>
		          <td><a class="STYLE4" href="${pageContext.request.contextPath }/tree_findTreeById.action?tree.id=${list.id}">
		          <img src="images/edt.gif" width="16" height="16" />编辑</a>&nbsp; &nbsp;
		          <a class="STYLE4" 
		          onClick="{if(confirm('此操作将删除当前记录!删除后将不能恢复,您确定执行的操作吗?')) {return true;}return false;}" href="${pageContext.request.contextPath }/tree_delete.action?tree.id=${list.id}"><img src="images/del.gif" width="16" height="16" />删除</a></td>
		          
		        </tr>
	         </s:iterator>
	      </tbody>
	    </table>
    </div>

    <div class="STYLE9"">
      <td  width="12" align="center">页次:${currentPage}/${sumPage}页&nbsp;每页${pageSize}条信息共${count}条
        
        
        
        
        
        <a class="STYLE9" href="${pageContext.request.contextPath}/tree_getAllTree.action?currentPage=1">首页</a>
		
		<s:if test="currentPage==1">上一页</s:if>
		
		
		<s:else>
		<a class="STYLE9" href="${pageContext.request.contextPath }/tree_getAllTree.action?currentPage=${currentPage-1}">上一页</a>
		</s:else>
		
		<s:if test="currentPage>=sumPage">下一页</s:if>
		
		<s:else>
		<a class="STYLE9" href="${pageContext.request.contextPath }/tree_getAllTree.action?currentPage=${currentPage+1}">下一页</a>
		</s:else>
		
		
		<a class="STYLE9" href="${pageContext.request.contextPath }/tree_getAllTree.action?currentPage=${sumPage}">尾页</a></td>
    </div>
  </div>
     
  </body>
</html>
