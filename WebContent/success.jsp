<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
<P>恭喜你猜对了<BR>
您共猜了<%=count%>次
<p>用时<%=(endTime-startTime)/1000%>秒。
<p>这个数字就是<%=num%>
<p>您必须重启浏览器才能获得新的数。
</body>
</html>
