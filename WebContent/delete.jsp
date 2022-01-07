<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
    
<%
		/*
		//guestboodDao의 delete쓸거임	
		GuestbookDao guestbookDao = new GuestbookDao();
		
		//파라미터값가져오기, 삭제하고자하는 no, 입력한 패스워드 가져오기
		String num = request.getParameter("no");
		int no = Integer.parseInt(num);
		String upw = request.getParameter("password");
		
		//db의 패스워드 가져오기
		String realPw = guestbookDao.select(no).getPassword();
		
		
		//같으면 삭제
		if(upw.equals(realPw)){
		guestbookDao.delete2(no);
		response.sendRedirect("./addList.jsp");
		}else{
			response.sendRedirect("./addList.jsp");
		}
		*/


		//guestboodDao의 delete쓸거임	
		GuestbookDao guestbookDao = new GuestbookDao();
		
		//파라미터값가져오기, 삭제하고자하는 no, 입력한 패스워드 가져오기
		String num = request.getParameter("no");
		int no = Integer.parseInt(num);
		String upw = request.getParameter("password");
		
		//기본 생성자 사용 삭제, 값 초기화
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(no);
		vo.setPassword(upw);
		
		
		guestbookDao.delete(vo);
		response.sendRedirect("./addList.jsp");	

		
		
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