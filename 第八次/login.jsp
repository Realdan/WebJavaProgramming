<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
</head>
<body>
	<form>
		账号：<input name="username" type="text"><br>
		密码：<input name="password" type="password"><br>
		<input type="submit" value="登录">
	</form>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username != null && username != "" && password != null && password != "" && username.equals(password)){
			ArrayList olMembers = (ArrayList)application.getAttribute("olMembers");
			if(olMembers == null) olMembers = new ArrayList();
			olMembers.add(username);
			application.setAttribute("olMembers", olMembers);
			response.sendRedirect("chatView.jsp");
		}
	%>
</body>
</html>