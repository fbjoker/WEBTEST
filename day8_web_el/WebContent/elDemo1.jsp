<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.atguigu.bookstore.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<base
	href="<%=request.getScheme()%>://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>/" />

</head>
<body bgcolor="#39987c">
	<h3>jspdemo1</h3>

	<%
		request.setAttribute("key", "requestvlue");
		pageContext.setAttribute("key", "pageValue");
		session.setAttribute("key", "seeionValue");
		application.setAttribute("key", "app");

		User user = new User(1, "kaka", "123", "as");
		pageContext.setAttribute("user", user);
	%>

	${key }
	<br> ${pageScope.key }
	<br> ${requestScope.key }
	<br> ${sessionScope.key }
	<br> ${applicationScope.key }
	<br>

	<hr>
	${user}
	<br> ${pageScope.user }
	<br> ${user.id}

	<hr>
	<%
		request.setAttribute("key", "request");
		pageContext.setAttribute("key", "page");
		session.setAttribute("key", "session");
		application.setAttribute("key", "application");
	%>


	${key } ${pageScope.key } ${requestScope.key } ${sessionScope.key }
	${applicationScope.key } ${user.girl }

<hr>
	<%
		List<User> list = new ArrayList<User>();
		list.add(new User(1, "kaka", "123", "kk"));
		list.add(new User(2, "ddd", "123", "kk"));
		list.add(new User(3, "ccc", "123", "kk"));
		list.add(new User(3, "ccc", "123", "kk"));
		request.setAttribute("list",list);
	%>
	
	${list[2] }
	${list[2].username }

<hr>
<%
	
	Map map=new HashMap();
	map.put("k1", "val1");
	map.put("k2-1", "val2");
	map.put("k3", list);
	map.put("k4", "val1");
	
	request.setAttribute("map", map);

%>

${requestScope.map }<br>
${requestScope.map.k1 }<br>
${requestScope.map['k2-1'] }<br>
${requestScope.map.k3 }<br>
${requestScope.map.k3[2]}<br>
${requestScope.map.k3[2].username}<br>

<hr>

<%
request.setAttribute("kka","test1");

%>


<%=request.getParameter("u") %><br>
<%=request.getAttribute("kka") %><br>

${param.u }<br>
${requestScope.kka }

<hr>

</body>
</html>