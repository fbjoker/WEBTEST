<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>jsp06.jps</h1>
pageContext=<%=pageContext.getAttribute("key") %><br>
request=<%=request.getAttribute("key") %><br>
session=<%=session.getAttribute("key") %><br>
application=<%=application.getAttribute("key") %><br>

<hr>

</body>
</html>