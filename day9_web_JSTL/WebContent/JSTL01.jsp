<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#39987c">

<%
	request.setAttribute("address1","hehe");
	request.setAttribute("code","<div>who?<div>");
	 %>


<h1>c:out</h1>
<br>
<c:out value="${requestScope.address }" default="kaka"></c:out><br>
<c:out value="${requestScope.code }" escapeXml="true"></c:out><br>
<br>
${requestScope.code }
<%=request.getAttribute("code") %>

<hr>

<h1>c:set</h1>
<c:set value="kaka" scope="session" var="name" ></c:set>
<c:set value="kaka" scope="request" var="name" ></c:set>
requestScope:${requestScope.name }<br>
pageContextScope:${pageContextScope.name }<br>
sessionScope:${sessionScope.name }<br>
applicationScope:${applicationScope.name }<br>

<hr>

<h1>c:remove</h1>

<c:remove var="name" scope="session"/>

requestScope:${requestScope.name }<br>
pageContextScope:${pageContextScope.name }<br>
sessionScope:${sessionScope.name }<br>
applicationScope:${applicationScope.name }<br>


<hr>
</body>
</html>