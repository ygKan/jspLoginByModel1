<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%--使用usebean 实例化 --%>
 <jsp:useBean id="users" class="com.po.Users" scope="page"></jsp:useBean>
 <jsp:useBean id="usersDao" class="com.dao.UsersDao" scope="page"></jsp:useBean> 
   <%--setProperty赋值      name的值要与usebean的id值一致  --%>
 <jsp:setProperty property="*" name="users"/>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>doLogin</title>
</head>
<body>
  <%
  //处理中文乱码问题
  request.setCharacterEncoding("utf-8");
   if( usersDao.userLogin(users)){
	 // 实例化的对象.方法名（实例化的对象名）
	   session.setAttribute("users", users.getUsername());
	   request.getRequestDispatcher("login_success.jsp").forward(request, response);
   }
   else{
	   response.sendRedirect("login_failure.jsp");
   }
  %>
 
</body>
</html>