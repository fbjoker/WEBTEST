<%@page import="java.util.ArrayList"%>
<%@page import="com.atguigu.bookstore.bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#39987c">

<c:forEach begin="1" end="500" var="x"  step="2">
	<span style="font-size: 80px;" ><a href="#"> ${pageScope.x }</a></span>

</c:forEach>
<hr>


<%
		List<User> list = new ArrayList<User>();
		list.add(new User(1, "kaka", "123", "kk"));
		list.add(new User(2, "ddd", "123", "kk"));
		list.add(new User(3, "ccc", "123", "kk"));
		list.add(new User(3, "ccc", "123", "kk"));
		request.setAttribute("list",list);
	%>

<c:forEach items="${requestScope.list}" var="user">

	<span style="font-size: 80px;" >
	${user }<br>
	</span>
</c:forEach>

</body>
</html>