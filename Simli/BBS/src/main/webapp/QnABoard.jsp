<%@page import="java.util.List"%>
<%@page import="Board.BoardDao"%>
<%@page import="Board.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	BoardDao bd = new BoardDao();
	List<BoardDto> list = bd.selectlist();
	System.out.println(list);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
	<%@include file="head.jsp"%>
</head>
<body>
	<%@include file="Nav.jsp"%>
	<div class="container">
	<h2>게시판 리스트</h2>
	<table>
		<thead>
		<tr>
		<th>게시판 번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일자</th>
		</tr>
		</thead>
		<tbody>
		<%
		for(BoardDto dto : list) {
		%>
		<tr>
			<td><%=dto.getIdx()%></td>
			<td><%=dto.getName()%></td>
			<td><%=dto.getTitle()%></td>
			<td><%=dto.getWdate()%></td>
		</tr>
		<%
			}
		%>
		</tbody>
	</table>
	</div>
</body>
</html>