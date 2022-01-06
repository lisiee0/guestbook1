<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>


<%
	// Dao 메모리에 올리기
	GuestbookDao gbDao= new GuestbookDao();
	
	// guestbookList 가져오기
	List<GuestbookVo> gbList= gbDao.getList();
	
	// test
	System.out.println(gbList.toString());

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- add section -->
	<form action="./add.jsp" method="get">
		<table border= "1" width= "500px">
			<tr>
				<td>이름</td>
				<td><input type= "text" name="name" value= ""></td>
				<td>비밀번호</td>
				<td><input type= "password" name="password" value= ""></td>
			</tr>
			<tr>
				<td colspan= "4">
					<textarea cols="65" rows="5" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan= "4">
					<button type="submit">글작성</button>
				</td>
			</tr>
		</table>
	</form>
	<br>
	
	
	<!-- list section -->
	<% 
	for(GuestbookVo vo: gbList) {
	%>
		<table border= "1" width= "500px">
			<tr>
				<td><%=vo.getNo()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getRegDate()%></td>
				<td>삭제</td>
			</tr>
			<tr>
				<td colspan= "4">
					<%=vo.getContent()%>
				</td>
			</tr>
		</table>
		<br>
	<%	
	}
	%>
	
</body>
</html>