<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>在线用户名单</title>
</head>
<body>
	<h1>在线用户名单</h1>
	<%
		ArrayList olMembers = (ArrayList)application.getAttribute("olMembers");
		if(olMembers == null){
			olMembers = new ArrayList();
			application.setAttribute("olMembers", olMembers);
		}
		olMembers = (ArrayList)application.getAttribute("olMembers");
		if(olMembers.size() == 0) out.println("当前没有用户在线！");
		for(int i = 0; i < olMembers.size(); i++){
			out.println(olMembers.get(i) + "<br>");
		}
	%>
</body>
</html>