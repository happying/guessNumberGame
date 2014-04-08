<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'failure.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body>
	<%
		int count=((Integer)session.getAttribute("count")).intValue();
		int num=((Integer)session.getAttribute("save")).intValue();
		long startTime=session.getCreationTime();
		long endTime=session.getLastAccessedTime();
	%>
	<P>不好意思，您3次都没有猜中，所以您输了<BR>
	您共猜了<%=count-1%>次
	<p>您总共用时<%=(endTime-startTime)/1000%>秒。
	<p>正确的数字是是<%=num%>
</body>
</html>
