<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'game.jsp' starting page</title>
    
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
	<p>随机给了您一个0到9的数请您猜
	<%
		int number=(int)(Math.random()*10);
		session.setAttribute("count",new Integer(0));
		session.setAttribute("save",new Integer(number));
	%>
	<BR>
	<p>请输入您猜的数
	<form action="result.jsp" method=post name=form>
		<input type="text" name="boy" value="">
		<input type="submit" name="submit" value="确定">
	</form>
</body>
</html>
