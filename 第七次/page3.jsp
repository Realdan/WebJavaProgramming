<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>人民币价格输出</title>
</head>
<body>
	<%
		String priceInDollar = request.getParameter("priceInDollar");
		String exchangeRate = request.getParameter("exchangeRate");
		Double priInDol = Double.valueOf(priceInDollar);
		Double exRate = Double.valueOf(exchangeRate);
		out.print("人民币价格为：" + priInDol * exRate + "<br>");
	%>
</body>
</html>