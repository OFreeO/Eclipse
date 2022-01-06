<%@page import="Member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("ID");
	String pwd = request.getParameter("PWD");
	String loginsave = request.getParameter("loginsave");
%>
<%=id%>
<%=pwd%>
<%=loginsave%>
<%
	MemberDao dao = new MemberDao();
	boolean ret = dao.memberloginchk(id,pwd);
	if(ret){
		out.println("로그인가능");
		
		session.setAttribute("id",id);
		session.setAttribute("pwd",pwd);
		
	}else{
%>
 <script>
	alert("로그인 불가!")
 </script>
<%
		out.println("로그인불가");
		response.sendRedirect("index.jsp");
	}
%>

</body>
</html>