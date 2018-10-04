<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新管理员页面</title>
<style type="text/css">
<!--
body {
	margin-left: 5px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>
<script type="text/javascript">
	function check(){

		if(document.getElementById("password").value==""){
			alert("密码必须填写!");
			return false;
			}	
		if(document.getElementById("repassword").value==""){
			alert("确认密码必须填写!");
			return false;
			}
		if(document.getElementById("password").value!=document.getElementById("repassword").value){
			alert("两次密码输入不一致!");
			return false;
			}	
		return true;
	}
</script>

</head>

<body>
<form action="${pageContext.request.contextPath }/userAction!updateUser.go" name="myForm" method="post">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">更新管理员页面</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
      <s:set var="us" value="user"></s:set>
      <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">用户名：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
        <input type="hidden" name="user.id" value="${us.id }">
          <input type="text" name="user.name" value="${us.name }"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">请输入密码：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="password" id="password" name="user.password"   style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">再次输入密码：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="password" id="repassword" name="password"   style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
      <tr>
        <td height="40" class="STYLE1">&nbsp;</td>
        <td height="35" colspan="2" class="STYLE1"><input type="submit" width="62" height="21" onclick="return check()" value="提交" /> <br /></td>
      </tr>
    </table>
   </td>
  </tr> 
</table></form>
</body>
</html>