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
	          <th >管理员账号:</th>
	          <th >管理员密码:</th>
	         
	          <th >对应操作</th>
     
	        </tr>
	      </thead>
	      <tbody id="tbody">
	         <s:iterator var="alladmin" value="listAdmin">
		        <tr>
		          <td>${alladmin.name}</td>
		          <td>${alladmin.password}</td>
		          
		          <td><a class="STYLE4" href="${pageContext.request.contextPath }/adminAction!getAdminById.go?admin.id=${alladmin.id}">
		          <img src="images/edt.gif" width="16" height="16" />编辑</a>&nbsp; &nbsp;
		          <a class="STYLE4" onClick="{if(confirm('此操作将删除当前记录!删除后将不能恢复,您确定执行的操作吗?')){return true;}return false;}" href="${pageContext.request.contextPath }/adminAction!deleteAdmin.go?admin.id=${alladmin.id}"><img src="images/del.gif" width="16" height="16" />删除</a></td>
		          
		        </tr>
	         </s:iterator>
	      </tbody>
	    </table>
    </div>

   
  </div>
     
  </body>
</html>
