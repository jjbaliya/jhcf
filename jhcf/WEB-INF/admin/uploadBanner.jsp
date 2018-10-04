<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>广告上传页面</title>

<style type="text/css">

body {
	margin-left: 5px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}
.STYLE1 {font-size: 18px}
.STYLE3 {font-size: 18px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 18px;
}

</style>
<script type="text/javascript">
  
function checkfm(){  
    var image = form.image.value;  
    if(trim(image)!=""){  
        var ext = image.substring(image.length-3).toLowerCase();  
        if (ext!="jpg" && ext!="gif" && ext!="bmp" && ext!="png"){  
            alert("只允许上传gif、jpg、bmp、png！");  
            return false;   
        }  
    }else{  
        alert("请上传图片！");  
        return false;  
    }  
    return true;  
}  
</script> 

</head>

<body>
<form action="${pageContext.request.contextPath }/banner_add.action" method="post" enctype="multipart/form-data">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">添加广告页面</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0" style="width: 521px; ">
     
      <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">广告商：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="banner.title"   style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">广告图片：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="file" name="images"   style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">广告链接：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="banner.link"   style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " pattern="(https?|ftp|file)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]" title="URL格式不正确" placeholder="格式如：https://www.baidu.com" />
        </div></td>
        </tr>
        
      <tr>

        <td height="35" colspan="2"   class="STYLE1" align="center">
        <input type="submit" width="62" height="21" value="提交" onclick="checkfm()" /> 
        <input type="reset" width="62" height="21" value="重置" />
         </td>
 
      </tr>
   </td>
  </tr> 
</table></form>
</body>
</html>