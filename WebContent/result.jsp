<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
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
String str=request.getParameter("boy");
if(str==null)
{
	str="0";
}
int guessNumber=Integer.parseInt(str);
Integer integer=(Integer)session.getAttribute("save");
int realNumber=integer.intValue();
if(guessNumber==realNumber)
{
	int n=((Integer)session.getAttribute("count")).intValue();
	n=n+1;
	if(n<=3)
	{
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("success.jsp");
	}
	else
	{
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("failure.jsp");
	}
}
else if(guessNumber<realNumber)
{
	int n=((Integer)session.getAttribute("count")).intValue();
	n=n+1;
	if(n<=3)
	{
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("small.jsp");
	}
	else
	{
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("failure.jsp");
	}
}
else if(guessNumber>realNumber)
{
	int n=((Integer)session.getAttribute("count")).intValue();
	n=n+1;
	if(n<=3)
	{
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("large.jsp");
	}
	else
	{
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("failure.jsp");
	}
}
%>
</body>
</html>
