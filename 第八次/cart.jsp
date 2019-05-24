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
		Map<String, String> enNames = new HashMap<String, String>();
		enNames.put("中国通史", "zgts");
		enNames.put("史记", "sj");
		enNames.put("资治通鉴", "zztj");
		enNames.put("Spring Cloud微服务实战", "spring");
		enNames.put("数据结构", "sjjg");
		enNames.put("计算机网络", "jsjwl");
		Map<String, String> cnNames = new HashMap<String, String>();
		cnNames.put("zgts", "中国通史");
		cnNames.put("sj", "史记");
		cnNames.put("zztj", "资治通鉴");
		cnNames.put("spring", "Spring Cloud微服务实战");
		cnNames.put("sjjg", "数据结构");
		cnNames.put("jsjwl", "计算机网络");
		String bookname = request.getParameter("bookname");
		ArrayList books = (ArrayList) session.getAttribute("books");
		if (bookname != null) {
			books.remove(cnNames.get(bookname));
		}
		books = (ArrayList) session.getAttribute("books");
		if (books == null || books.size() == 0) {
			out.println("您的购物车为空！");
		} else {
			out.println("<table cellspacing=\"20\">");
			for (int i = 0; i < books.size(); i++) {
				out.println("<tr><td>" + books.get(i) + "</td>" + "<td><a href=\"cart.jsp?bookname="
						+ enNames.get(books.get(i)) + "\">删除</a></td></tr>");
			}
			out.println("</table>");
		}
	%>
</body>
</html>