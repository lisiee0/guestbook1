<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	GuestbookDao gbDao= new GuestbookDao();
	List<GuestbookVo> gbList= gbDao.getList();
	
	int no= Integer.parseInt(request.getParameter("no"));
	String password1= gbDao.getGuest(no).getPassword();
	String password2= request.getParameter("password");

	if(password1.equals(password2)) {
		gbDao.guestDelete(no);
		response.sendRedirect("./addList.jsp");	
	}
	else {
		response.sendRedirect("./addList.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>