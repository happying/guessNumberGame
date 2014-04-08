<%@page contentType="text/html;charset=gb2312"%>
<html>
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
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("success.jsp");
}
else if(guessNumber<realNumber)
{
	int n=((Integer)session.getAttribute("count")).intValue();
	n=n+1;
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("small.jsp");
}
else if(guessNumber>realNumber)
{
	int n=((Integer)session.getAttribute("count")).intValue();
	n=n+1;
	session.setAttribute("count",new Integer(n));
	response.sendRedirect("large.jsp");
}
%>
</body>
</html>