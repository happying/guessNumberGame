<%@page contentType="text/html;charset=gb2312"%>
<html>
<body>
<p>随机给了您一个1到100的数请您猜
<%
int number=(int)(Math.random()*100)+1;
session.setAttribute("count",new Integer(0));
session.setAttribute("save",new Integer(number));
%>
<BR>
<p>请输入您猜的数
<form action="result.jsp" method=post name=form>
<input type="text" name="boy" value="">
<input type="submit" name="submit" value="送出">
</form>
</body>
</html>