<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
    
<%

	//guestboodDao의 delete쓸거임	
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//(1)파라미터값가져오기, 삭제하고자하는 no 가져오기
 	String num = request.getParameter("no");
	int no = Integer.parseInt(num);

	//GuestbookVo에서 해당 no가진 사람의 패스워드 출력
	String upw = guestbookDao.select(no).getPassword();
	
	//(2)파라미터값가져오기, 비밀번호가 일치하면 삭제 후 리다이렉션
	String password = request.getParameter("password");
	if(password.equals(upw)){
		guestbookDao.delete(no);
		response.sendRedirect("./addList.jsp");
	}else{
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