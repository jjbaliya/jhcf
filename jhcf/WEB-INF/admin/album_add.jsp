<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1,text/html; charset=utf-8"/> 
        <link rel="shortcut icon" href="../favicon.ico"/> 
		<title>新建相册</title>
		
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/style.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<script type="text/javascript" src="../include/js/jquery.min.js"></script>
		<script type="text/javascript" src="../include/js/jquery.gallery.js"></script>
		<script type="text/javascript" src="../include/js/modernizr.custom.53451.js"></script>
		<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0,initial-scale=1.0,maximum-scale=1.0"/>
		
	</head>
<body>
  <center>
      <h3>
        <p><span>网站相册</span></p>
        <a href="../manage/album_photo.action?type=<s:property value="type" />" target="_blank" class="more">添加照片</a> 
      </h3>
       <form action="../manage/album_add.action" method="post" theme="xhtml" enctype="multipart/form-data">
      		<table>
      			<tr>
      			<!-- some要与action中的ImageUpload保持一致 -->
      				<td><span>相册封面:</span><input type="file" name="some"/></td>
      			</tr>
      			<tr>
      				<td><span>相册描述:</span><input name="album.title"/></td>
      			</tr>
      			<tr>
	    			<td><textarea name="album.content" >相册的内容</textarea></td>
	    			<ckeditor:replace  replace="album.content" basePath="../ckeditor/" />
    			</tr>
      		</table>
      		<input type="submit" value="提交" />
      </form>
     </center>
</body>
</html>
