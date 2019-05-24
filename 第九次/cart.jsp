<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
</head>
<body>
	<h1>购物车中的内容是：</h1>
	<%
		ArrayList products = (ArrayList)session.getAttribute("products");
		if(products == null || products.size() == 0){
			out.println("购物车为空！");
		}
		else{
			for(int i = 0; i < products.size(); i++){
				out.println(products.get(i) + "<br>");
			}
		}
	%>
</body>
</html>