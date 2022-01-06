<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	int no= Integer.parseInt(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		<!-- no값 hidden 처리 -->
		<input type="hidden" name="no" value="<%=no%>">
		
		비밀번호: <input type="password" name="password" value="">
		<button type="submit">확인</button> <br>
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>
</body>
</html>

