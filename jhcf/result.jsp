<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <html>
  <body>
    <!-- 提交后返回注册页面 -->
    <form name="form" action="${requestScope.page}" method="post">
   	    <!-- 非空则执行以下操作 -->
    	<c:if test="${requestScope.info !=null}">
    	<script type="text/javascript">	
    			alert('${requestScope.info}');  //显示结果
    			form.submit(); //提交form	
    	</script>
    	</c:if>
    </form>
  </body>
</html>
