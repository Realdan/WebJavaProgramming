<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>访问信息</title>
</head>
<body>
	<%
		String head = request.getParameter("head");
		if(head.equals("192")) out.print("访问禁止！！！<br>");
		else out.print("访问成功！！！<br>");
	%>
</body>
</html>