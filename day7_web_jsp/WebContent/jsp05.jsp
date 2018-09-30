<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp05页面</h1>

<%

	pageContext.setAttribute("key","pageValue");
	request.setAttribute("key","requestValue");
	session.setAttribute("key","seeionValue");
	application.setAttribute("key","appvalue");
%>

pageContext=<%=pageContext.getAttribute("key") %>
request=<%=request.getAttribute("key") %>
session=<%=session.getAttribute("key") %>
application=<%=application.getAttribute("key") %>

<a href="<%=request.getContextPath() %>/jsp06.jsp"></a>
<%-- <jsp:forward page="/jsp06.jsp"></jsp:forward>
 --%>

<%-- <%
	response.sendRedirect(request.getContextPath()+"/jsp06.jsp");
%> --%>

<br>
<a href="<%=request.getContextPath() %>/jsp06.jsp">跳转</a>



<%-- <%

pageContext.setAttribute("ken", "context");
request.setAttribute("ken", "request");
session.setAttribute("ken", "session");
application.setAttribute("ken", "application");

pageContext.getAttribute("ken")
request.getAttribute("ken")
session.getAttribute("ken")
application.getAttribute("ken")

%> --%>
</body>




</html>