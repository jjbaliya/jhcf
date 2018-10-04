<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
      <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加管理员页面</title>
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

<script type="text/javascript">
	function check(){
  	if(document.getElementById("name").value==""){
			alert("账号必须填写!");
			return false;
			}	
		if(document.getElementById("password").value==""){
			alert("密码必须填写!");
			return false;
			}	
		return true;
	}
</script>
</head>

<body>
<form action="${pageContext.request.contextPath }/adminAction!addAdmin.go" name="myForm" method="post">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">添加管理员</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
     
     <tr>
      <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">账号：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="name" id="name"   style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">密码：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="password" name="password" id="password"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
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