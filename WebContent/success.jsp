<%@page contentType="text/html;charset=gb2312"%>
<html>
<body>
<%
int count=((Integer)session.getAttribute("count")).intValue();
int num=((Integer)session.getAttribute("save")).intValue();
long startTime=session.getCreationTime();
long endTime=session.getLastAccessedTime();
%>
<P>��ϲ��¶���<BR>
��������<%=count%>��
<p>��ʱ<%=(endTime-startTime)/1000%>�롣
<p>������־���<%=num%>
<p>������������������ܻ���µ�����
</body>
</html>