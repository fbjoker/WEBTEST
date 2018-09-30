<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#39987c">


<h2> C:IF</h2>
<c:if test="${param.age>18 }">
<span>bigo</span>

</c:if>

<hr>

	<c:choose>

		<c:when test="${param.age>18 }">
		正确
		</c:when>
		
		<c:otherwise>
		错误
		</c:otherwise>

	</c:choose>


<hr>
<c:choose>
	<c:when test="${param.age>=60 }">
	
	<c:choose>
	
			<c:when test="${param.age>=85 }">
			<c:choose>
			
				<c:when test="${param.age>=95 }">
				<span style="font-size: 300px;"> 低调</span>
				</c:when>
					<c:otherwise>
					还阔以
					</c:otherwise>
			
			
			</c:choose>
				
			</c:when>
		
		<c:otherwise>
			<c:choose>
			
				<c:when test="${param.age>=75 }">
				一般般
				</c:when>
					<c:otherwise>
					及格
					</c:otherwise>
			
			
			</c:choose>
			
		</c:otherwise>
		
	</c:choose>
	
	
	</c:when>
	
	
	<c:otherwise>
	
	呵呵
	
	</c:otherwise>



</c:choose>



</body>
</html>