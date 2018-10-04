<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
      <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新活动页面</title>
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
<form action="${pageContext.request.contextPath }/activitysAction!updateActivitys.go" name="myForm" method="post" enctype="multipart/form-data">
<table width="100%" border="1" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
     <s:set value="activitys" var="getActivitys"></s:set>
      <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动标题：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
        <input type="hidden" name="activitys.id" value="${getActivitys.id }">
          <input type="text" name="activitys.title" required="required" value="${getActivitys.title}"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动发布者：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="activitys.editer" required="required" value="${getActivitys.editer }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
      
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动开始时间：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
         <input class="Wdate" name="activitys.startactivity" value="${getActivitys.startactivity }" type="text" required="required" onClick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss' })"> <font color=red>&lt;- 点我弹出日期</font>
       
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动结束时间：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
         <input class="Wdate" name="activitys.endactivity" required="required" value="${getActivitys.endactivity }" type="text" onClick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss' })"> <font color=red>&lt;- 点我弹出日期</font>
       
        </div></td>
        </tr>
        
      
        
         <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">报名截止时间：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
         <input class="Wdate" name="activitys.enrollend" required="required" value="${getActivitys.enrollend }" type="text" onClick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss' })"> <font color=red>&lt;- 点我弹出日期</font>
      
      <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动需要人数：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="activitys.number" required="required" value="${getActivitys.number }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        
        
        
          <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动负责人：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" required="required" name="activitys.activitycharge" value="${getActivitys.activitycharge }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        
        
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">活动负责人电话：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" required="required" name="activitys.chargephone" value="${getActivitys.chargephone }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        
         
        
          <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">电子签到负责人：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" required="required" name="activitys.signcharge" value="${getActivitys.signcharge}"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
       
       <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">电子签到负责人电话：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" required="required" name="activitys.signphone" value="${getActivitys.signphone }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
       
        </div></td>
        </tr>
        
        
        
          <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">集合地点：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="activitys.address" required="required" value="${getActivitys.address }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">集合时间：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
        <input class="Wdate" name="activitys.endactivity" required="required" value="${getActivitys.gathertime}" type="text" onClick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss' })"> <font color=red>&lt;- 点我弹出日期</font>
          
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
        <td colspan="3" height="35" colspan="1" class="STYLE1"><div align="left">
          <textarea name="activitys.cont"  style=" width:600px; height:200px;">${getActivitys.cont }</textarea>
          <script type="text/javascript">
          		 CKEDITOR.replace('activitys.cont');
          			          		
          </script>
        </div></td>
        </tr>      
        
      <tr>
        <td height="20" class="STYLE1">&nbsp;</td>
        <td height="20" colspan="2" class="STYLE1"><input type="submit" width="62" height="21" value="提交" /> <br /></td>
      </tr>
    </table>
   </td>
  </tr> 
</table></form>
</body>
</html>