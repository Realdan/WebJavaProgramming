<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>欢迎</title>
</head>
<body>
	<%
		String isLogin = null;
		Cookie[] cookies = request.getCookies();
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("isLogin")){
				isLogin = cookies[i].getValue();
				break;
			}
		}
		if(isLogin == null){
			response.sendRedirect("login.jsp");
		}
	%>
	<h1>欢迎登录！</h1>
</body>
</html>