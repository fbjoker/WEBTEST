<%@page import="com.atguigu.bookstore.bean.User"%>
<%@page import="java.util.ArrayList"%>
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

	<%
		List<User> list = new ArrayList<User>();
		list.add(new User(1, "kaka", "123", "kk"));
		list.add(new User(2, "ddd", "123", "kk"));
		list.add(new User(3, "ccc", "123", "kk"));
	%>
	<table border="1">
	<tr>
		<td>ID</td>
		<td>Username</td>
		<td>Password</td>
		<td>Email</td>
		</tr>
	<%
		for (User user : list){
	%>
		<tr>
		<td><%=user.getId() %></td>
		<td><%=user.getUsername() %></td>
		<td><%=user.getPassword() %></td>
		<td><%=user.getEmail() %></td>
		</tr>
	<%
		}
	%>
	</table>

</body>
</html>