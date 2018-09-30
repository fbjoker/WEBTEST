<%@page import="java.util.List"%>
<%@page import="com.atguigu.bookstore.bean.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#33987c">


	<%-- <%
		List<User> list = (List<User>) request.getAttribute("list");
		request.setAttribute("list", list);
	%> --%>

	
		
		<c:choose>
		
			<c:when test="${empty requestScope.list}">
			<span> "空空"</span>
			
			</c:when>
			
			<c:otherwise>
					<table style=" font-size: 80px;" border="1" width="70%" align="center">
				<tr align="center">
					<td>ID</td>
					<td>Username</td>
					<td>Password</td>
					<td>Email</td>
				</tr>
				
				
					<c:forEach  var="user" items="${requestScope.list }" >
						<tr align="center">
							<td>${user.id }</td>
							<td>${user.username }</td>
							<td>${user.password }</td>
							<td>${user.email }</td>
						</tr>
				
				</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
		
		
		
		<%-- <%
			for (User user : list) {
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getUsername()%></td>
			<td><%=user.getPassword()%></td>
			<td><%=user.getEmail()%></td>
		</tr>
		<%
			}
		%> --%>
	
</body>
</html>