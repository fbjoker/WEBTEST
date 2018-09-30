<%@page import="java.util.ArrayList"%>
<%@page import="com.atguigu.bookstore.bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table width="600" border="1px" align="center" >
	<tr bgcolor="aquamarine">
		<td align="center">ID</td>
		<td align="center">用户名</td>
		<td align="center">密码</td>
		<td align="center">邮箱</td>

	</tr>
	
	<% %>
	<%
		List<User> list = new ArrayList();
		list.add(new User(1, "kaka", "123", "kk"));
		list.add(new User(2, "ddd", "123", "kk"));
		list.add(new User(3, "ccc", "123", "kk"));

		for (User user : list) {
	%>
	<tr>
		<td align="center"><%=user.getId() %></td>
		<td align="center"><%=user.getUsername() %></td>
		<td align="center"><%=user.getPassword() %></td>
		<td align="center"><%=user.getEmail() %></td>

	</tr>
	<%
		}
	%>
	</table>
</body>
</html>