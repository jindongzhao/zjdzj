<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../error.jsp"%>
    <jsp:useBean id="s" class="com.zjdzj.www.web.StringTrans"/>
    <jsp:useBean id="sql" class="com.zjdzj.www.web.selectsql"/>
    <jsp:useBean id="news" class="com.zjdzj.www.web.news"/>
    <jsp:setProperty property="*" name="news"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=(String)session.getAttribute("id");//id从newsDel.jsp所得
int i=0;
i=sql.delNews(id);
if(i==1){
	
 %>
 <script language="JavaScript">
 window.alert("删除成功");
  window.close();
 window.opener.location.reload();
 </script>
 <%} %>
</body>
</html>