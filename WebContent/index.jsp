<%@page contentType="text/html;charset=gb2312"%>
<html>
<body>
<p>���������һ��1��100����������
<%
int number=(int)(Math.random()*100)+1;
session.setAttribute("count",new Integer(0));
session.setAttribute("save",new Integer(number));
%>
<BR>
<p>���������µ���
<form action="result.jsp" method=post name=form>
<input type="text" name="boy" value="">
<input type="submit" name="submit" value="�ͳ�">
</form>
</body>
</html>