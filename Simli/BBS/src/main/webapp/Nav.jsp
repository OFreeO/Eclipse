<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="index.jsp">메인</a>
  <!-- Links -->
  <ul class="nav navbar-nav navbar-left">
    <li class="nav-item">
      <a class="nav-link" href="FreeBoard.jsp">자유게시판</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="QnABoard.jsp">질문게시판</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        제작자
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">권용규</a>
        <a class="dropdown-item" href="https://github.com/OFreeO">깃허브</a>
      </div>
    </li>
  </ul>
      <form class="navbar-form ml-auto form-inline" role="search">
    	<input class="form-control mr-sm-2" type="text" placeholder="검색"/>
    	<button class="btn btn-success" type="submit">검색</button>
  	</form>
</nav>