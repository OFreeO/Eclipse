<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="head.jsp"%>
<script>
	$('document').ready(function(){
		$('#logout').on('click',function(){
		window.location='logout.jsp';
		});
	});
</script>
<head>
<meta charset="EUC-KR">
<title>대충 사이트</title>
</head>
<body>
<h2 id="main" style="text-align: center;"><a href="index.jsp"><img src="D:\java\Simli\BBS\src\main\img\Logo.jpg"></a></h2>
<%@include file="Nav.jsp"%>
<div class="container">
	<div class="row p-3">
		<div class="col-md-8">
	<iframe class="col-md-8 " width="100%" height="360" src="https://www.youtube.com/embed/yON8XdFx4Ws" title="YouTube video player"
	frameborder="0"
 	allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>
		</div>
	<%
		Object IDobj = session.getAttribute("ID");
		if(IDobj == null){
	%>
		<div class="col-md-4 pt-5">
		<h3>사이트 로그인</h3>
		<form action="login.jsp">
			<div class="form-group">
				<label for="ID">ID:</label>
				<input type="ID" class="form-control" id="ID" name="ID" placeholder="아이디">
			</div>
			<div class="form-group">
				<label for="PW">PW:</label>
				<input type="password" class="form-control" id="PWD" name="PWD" placeholder="비밀번호">
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="loginsave" value="true">정보 기억하기</label>
			</div>
			<button type="submit" class="btn btn-primary col-12" >로그인</button><hr style="border: 0px">
			<button type="submit" class="btn btn-primary col-12" >회원가입</button>
		</form>
		</div>
		<%
			}else{
		%>
		<div class="col-md-4 pt-5">
			로그인.<br>
			<%=IDobj%>님 환영합니다.<br>
			<button class="btn btn-primary" id=logout">로그아웃</button>
		</div>
		<% } %>
	</div>
<div class="row p-3">
        <div class="col-md-12">
            <div class="jumbotron">
                <h1>안녕하세요</h1>
                <p>대통령은 국무총리·국무위원·행정각부의 장 기타 법률이 정하는 공사의 직을 겸할 수 없다. 헌법개정은 국회재적의원 과반수 또는 대통령의 발의로 제안된다.
                    헌법개정안이 제2항의 찬성을 얻은 때에는 헌법개정은 확정되며, 대통령은 즉시 이를 공포하여야 한다. 모든 국민은 그 보호하는 자녀에게 적어도 초등교육과 법률이 정하는 교육을 받게 할 의무를 진다.</p>
            </div>
            <p>헌법재판소 재판관은 정당에 가입하거나 정치에 관여할 수 없다. 대한민국의 경제질서는 개인과 기업의 경제상의 자유와 창의를 존중함을 기본으로 한다.</p>
            <p>모든 국민은 언론·출판의 자유와 집회·결사의 자유를 가진다. 대한민국은 국제평화의 유지에 노력하고 침략적 전쟁을 부인한다. 탄핵소추의 의결을 받은 자는 탄핵심판이 있을 때까지 그 권한행사가 정지된다.</p>
        </div>
    </div>
</div>
</body>
</html>