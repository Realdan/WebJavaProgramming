<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>美元汇率输入</title>
</head>
<body>
	<%
		String pri = request.getParameter("priceInDollar");
	%>
	<form action="page3.jsp">
		美元兑人民币汇率：<input type="text" name="exchangeRate"><br>
		<input type="hidden" name="priceInDollar" value="<%=pri %>">
		<input type="submit" value="提交">
	</form>
</body>
</html>