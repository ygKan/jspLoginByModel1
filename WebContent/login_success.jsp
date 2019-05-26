<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
  <%
  String name="";
  if(session.getAttribute("users")!=null){
	 name=session.getAttribute("users").toString(); 
  }
  %>
  <h3>欢迎您<font color="blue"><%= name %>  </font>登陆!</h3>
</body>
</html>