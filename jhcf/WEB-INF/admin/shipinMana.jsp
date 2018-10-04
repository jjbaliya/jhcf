<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();

%>

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
   
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	
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
  <script type="text/javascript" src="<%=path %>/js/public.js"></script>
		
       <script language="javascript">
           function shipinDel(shipinId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/shipinDel.action?shipinId="+shipinId;
               }
           }
           function shipinAdd()
           {
                 var url="<%=path %>/toadd.action";
				 window.location.href=url;
           }
           
           function shipinBofang(fujian)
           {
                 var url="<%=path %>/bofang/bofang.jsp?fujian="+fujian;
                 var n="";
                 var w="700px";
                 var h="600px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
       </script>
 </head>
  <body>
  
 <div class="container" >
   
    <div class="dgvone">
       <table class="table table-condensed table-bordered table-striped" id="tableid">
	      <thead class="theadone">
	        <tr>
	          <th > 序号</th>
	          <th >标题</th>
	          <th >操作</th>
	        
     
	        </tr>
	      </thead>
	      <tbody id="tbody">
	        <s:iterator value="#request.shipinList" id="shipin" status="ss">
		        <tr>
		          <td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#shipin.shipinName"/>
						&nbsp;&nbsp;&nbsp;
						<a href="#" onclick="down1('<s:property value="#shipin.fujian"/>','<s:property value="#shipin.fujianYuanshiming"/>')" style="font-size: 10px;color: red">下载</a>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="shipinDel(<s:property value="#shipin.shipinId"/>)" class="pn-loperator">删除</a>
						<a href="#" onclick="shipinBofang('<s:property value="#shipin.fujian"/>')" class="pn-loperator">播放</a>
					</td>
				</tr>
				</s:iterator>
				<input type="button" class="btn btn-success"  value="添加视频" style="width: 120px;" onclick="shipinAdd()" />
				  
	      </tbody>
	    </table>
    </div>

  </div>
     
  </body>
</html>
