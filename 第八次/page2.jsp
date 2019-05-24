<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>计算机图书</title>
	<meta name="referrer" content="no-referrer" />
</head>
<body>
	<h1>计算机图书</h1>
	<a href="cart.jsp">查看购物车</a>
	<table cellspacing="20">
		<tr>
			<td class="bookimg"><img alt="book1"
				src="https://img.alicdn.com/imgextra/i4/2726038367/O1CN01zHYVpr2Bg8PPDIu6g_!!0-item_pic.jpg_430x430q90.jpg"
				width=100 height=100></td>
			<td class="bookname">Spring Cloud微服务实战</td>
			<td class="bookprice">62.30元</td>
			<td><a href="page2.jsp?bookname=spring">购买</a></td>
		</tr>
		<tr>
			<td class="bookimg"><img alt="book2"
				src="https://img.alicdn.com/imgextra/i3/249772349/O1CN016bQ8Ae1TDssKsrsvf_!!0-item_pic.jpg_430x430q90.jpg"
				width=100 height=100></td>
			<td class="bookname">数据结构</td>
			<td class="bookprice">27.00元</td>
			<td><a href="page2.jsp?bookname=sjjg">购买</a></td>
		</tr>
		<tr>
			<td class="bookimg"><img alt="book3"
				src="https://img.alicdn.com/imgextra/i2/249772349/O1CN01TPrpZu1TDsqzuUfZg_!!0-item_pic.jpg_430x430q90.jpg"
				width=100 height=100></td>
			<td class="bookname">计算机网络</td>
			<td class="bookprice">42.10元</td>
			<td><a href="page2.jsp?bookname=jsjwl">购买</a></td>
		</tr>
	</table>
	<%
		Map<String, String> cnNames = new HashMap<String, String>();
		cnNames.put("spring", "Spring Cloud微服务实战");
		cnNames.put("sjjg", "数据结构");
		cnNames.put("jsjwl", "计算机网络");
		String bookname = request.getParameter("bookname");
		if(bookname != null){
			ArrayList books = (ArrayList) session.getAttribute("books");
			if(books == null) books = new ArrayList();
			books.add(cnNames.get(bookname));
			session.setAttribute("books", books);
		}
	%>
</body>
</html>