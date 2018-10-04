<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
      <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新公告页面</title>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<SCRIPT type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></SCRIPT>
<style type="text/css">
<!--
body {
	margin-left: 5px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}
.STYLE1 {font-size: 17px}
.STYLE3 {font-size: 17px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 17px;
}
-->
</style>


</head>

<body>
<form action="${pageContext.request.contextPath }/announcesAction!updateAnnounces.go" name="myForm" method="post" enctype="multipart/form-data">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">更新公告页面</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">所属公告类型：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <select name="announces.groupname"  style="width:200px; height:17px; font-size:12px;">
           
            <option value=1>动态公告</option>
            <option value=2>月度公告</option>
            <option value=3>财务公告</option>
            
            
          </select>          
        </div></td>
        </tr>
   
     <s:set value="announces" var="getAnnounces"></s:set>
     
      <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">公告标题：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
        <input type="hidden" name="announces.id" value="${getAnnounces.id }">
          <input type="text" name="announces.title" required="required" value="${getAnnounces.title}"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">公告发布者：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="announces.editer" required="required" value="${getAnnounces.editer }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">添加时间：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
         <input class="Wdate" name="announces.date" required="required" value="${getAnnounces.date }" type="text" onClick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss' })"> <font color=red>&lt;- 点我弹出日期</font>
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">上传图片：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="file" name="images"  />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">内容：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <textarea name="announces.cont"  style=" width:600px; height:200px;">${getAnnounces.cont }</textarea>
          <script type="text/javascript">
          		 CKEDITOR.replace('announces.cont');
          			          		
          </script>
        </div></td>
        </tr>      
        
      <tr>
        <td height="40" class="STYLE1">&nbsp;</td>
        <td height="35" colspan="2" class="STYLE1"><input type="submit" width="62" height="21" value="提交" /> <br /></td>
      </tr>
    </table>
   </td>
  </tr> 
</table></form>
</body>
</html>