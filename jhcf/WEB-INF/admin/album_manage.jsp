<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>网站相册</title>
		
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/style.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
		
	</head>
<body>
<div class="ibody">
 
  <article>
  
    <div class="template">
      <h3>
        <p><span>个人相册</span></p>
        <a href="../manage/to_album_add.action"  class="more">新建相册</a> </h3>
      <ul>
      <s:iterator value="albums">
        <li><a href="album_detail.action?id=<s:property value="id"/>" ><img src="<s:property value="image" />"/></a><span><s:property value="title"/><a href="../manage/album_delete.action?id=<s:property value="id" />">删除</a></span></li>
      </s:iterator>
      </ul>
    
</body>
</html>
