<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1,text/html; charset=utf-8"/> 
        <link rel="shortcut icon" href="../favicon.ico"/> 
		<title>添加照片</title>
		
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

      <h3>
        <p><span>网站相册</span></p>
      </h3>
       <form action="../manage/album_photo_add.action?albumId=<s:property value="albumId" />" method="post" theme="xhtml" enctype="multipart/form-data">
      		<table>
      			<tr>
      				<td><span>添加图片:</span><input type="file" name="some"/></td>
      			</tr>
      			<tr>
      				<td><span>照片描述:</span><input name="photo.note"/></td>
      			</tr>
      			<tr>
	    			<td><textarea name="photo.content" >照片的内容</textarea></td>
	    			<ckeditor:replace  replace="photo.content" basePath="../ckeditor/" />
    			</tr>
      		</table>
      		
      		<input type="submit" value="提交"/>
      </form>
      <h3>
     
     
   
</body>
</html>
