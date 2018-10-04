<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>风信子公益</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
   <!-- 提交后返回注册页面 -->
    <form name="form" action="${pageContext.request.contextPath }/indexAction!showIndexInfo.go" method="post">
   	    <!-- 非空则执行以下操作 -->
    	<script type="text/javascript">	
    			form.submit(); //提交form	
    	</script>
    	</c:if>
    </form>
  </body>
</html>
