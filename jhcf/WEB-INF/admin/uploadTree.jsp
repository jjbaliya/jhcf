<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加成长树信息页面</title>

	<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<SCRIPT type="text/javascript"
	src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></SCRIPT>
<style type="text/css">
<!--
body {
	margin-left: 5px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}

.STYLE1 {
	font-size: 16px;
}

.STYLE3 {
	font-size: 20px;
	font-weight: bold;
}

.STYLE4 {
	color: #03515d;
	font-size: 16px;
}
-->
</style>


</head>

<body>
	<form action="tree_add.action" name="myForm" method="post"
		enctype="multipart/form-data">
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="1" bgcolor="d5d4d4">
			<tr>
				<td height="22" colspan="4" background="images/bg.gif"
					bgcolor="#FFFFFF" class="STYLE3"><div align="center">添加成长树页面</div></td>
			</tr>
			<tr>
				<td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table
						width="70%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap"
								style="width: 51px; "><div align="left">
									姓名：
								</div></td>
							<td height="35" colspan="1" class="STYLE1" style="width: 626px; "><div align="left">
									<input type="text" name="tree.realName"
										style="width: 164px; height:17px; font-size:16px; border:solid 1px #ccc; " />
								</div></td>
						</tr>
						

						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap" style="width: 46px; "><div
									align="left">
									性别：
								</div></td>
							<td height="35" colspan="1" class="STYLE1"><div align="left"
									style="height: 33px; ">
									<input name="tree.gender" type="radio" value="男" checked="checked" />男&nbsp;
									<input name="tree.gender" type="radio" value="女" />女

								</div></td>
						</tr>


						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap"><div
									align="left">
									出生：
								</div></td>
							<td height="35" colspan="1" class="STYLE1"><div align="left">
									<input class="Wdate" name="tree.birth" type="text"
										onClick="WdatePicker()"> <font color=red>&lt;-
										点我弹出日期</font>
								</div></td>
						</tr>

						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap"><div
									align="left">
									民族：
								</div></td>
							<td height="35" colspan="1" class="STYLE1"><div align="left">
									<input type="text" name="tree.ethnic"
										style="width: 164px; height:17px; font-size:16px; border:solid 1px #ccc; " />
								</div></td>
						</tr>
						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap"><div
									align="left">
									帮扶时间：
								</div></td>
							<td height="35" colspan="1" class="STYLE1"><div align="left">
									<input class="Wdate" name="tree.rescueTime" type="text"
										onClick="WdatePicker()"> <font color=red>&lt;-
										点我弹出日期</font>
								</div></td>
						</tr>
						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap"><div
									align="left">
									照片：
								</div></td>
							<td height="35" colspan="1" class="STYLE1"><div align="left">
									<input type="file" name="images" />
								</div></td>
						</tr>
						<tr>
							<td width="142" height="35" class="STYLE1" nowrap="nowrap"><div
									align="left">
									成长经历：
								</div></td>
							<td height="35" colspan="1" class="STYLE1"><div align="left">
									<textarea name="tree.content"
										style=" width:600px; height:200px;"></textarea>

									<script type="text/javascript">
										CKEDITOR.replace('tree.content');
									</script>

								</div></td>
						</tr>

						<tr>
							<td height="40" class="STYLE1">&nbsp;</td>
							<td height="35" colspan="2" class="STYLE1"><input
								type="submit" width="62" height="21" value="提交" style="width: 110px; "/> <input
								type="reset" width="62" height="21" value="重置" style="width: 114px; "/></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form>
</body>
</html>