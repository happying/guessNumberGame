<%@page contentType="text/html;charset=gb2312"%>
<html>
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