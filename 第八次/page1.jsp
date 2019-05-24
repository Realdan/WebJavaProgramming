<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>历史图书</title>
	<meta name="referrer" content="no-referrer" />
</head>
<body>
	<h1>历史图书</h1>
	<a href="cart.jsp">查看购物车</a>
	<table cellspacing="20">
		<tr>
			<td class="bookimg"><img alt="book1"
				src="https://img.alicdn.com/imgextra/i3/2658059172/O1CN01GGRo9u2HcpCmRA5mM_!!0-item_pic.jpg_430x430q90.jpg"
				width=100 height=100></td>
			<td class="bookname">中国通史</td>
			<td class="bookprice">59.80元</td>
			<td><a href="page1.jsp?bookname=zgts">购买</a></td>
		</tr>
		<tr>
			<td class="bookimg"><img alt="book2"
				src="https://img.alicdn.com/imgextra/i1/859515618/TB1QraBpgn.PuJjSZFkXXc_lpXa_!!0-item_pic.jpg_430x430q90.jpg"
				width=100 height=100></td>
			<td class="bookname">史记</td>
			<td class="bookprice">39.80元</td>
			<td><a href="page1.jsp?bookname=sj">购买</a></td>
		</tr>
		<tr>
			<td class="bookimg"><img alt="book3"
				src="https://img.alicdn.com/imgextra/i4/2579222122/O1CN011RXuv9fagy0fwlG_!!0-item_pic.jpg_430x430q90.jpg"
				width=100 height=100></td>
			<td class="bookname">资治通鉴</td>
			<td class="bookprice">69.80元</td>
			<td><a href="page1.jsp?bookname=zztj">购买</a></td>
		</tr>
	</table>
	<%
		Map<String, String> cnNames = new HashMap<String, String>();
		cnNames.put("zgts", "中国通史");
		cnNames.put("sj", "史记");
		cnNames.put("zztj", "资治通鉴");
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