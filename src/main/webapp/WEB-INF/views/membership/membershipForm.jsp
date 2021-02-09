<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>



<link href="/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a6b1415e6e.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="module" src="https://unpkg.com/player-chrome"></script>

<script type="text/javascript">


function wirteForm() {
	var date1 = new Date(Time2);
	console.log(date1);

}


</script>



<style>
* {
	font-family: 'Do Hyeon';
}
/* NAVISTART */
.upper-bar {
	background-color: #ffd343 !important;
	font-size: 20px;
}

.search-bar {
	width: 70% !important;
	margin-left: 20px;
	min-width: 300px;
}

.main-logo {
	width: 300px;
	height: 100px;
	min-width: 300px;
}

.dropdown-item {
	font-size: 20px;
}

.rounded-circle {
	width: 48px;
}
/* NAVIEND */
/* SIDEBAR */
#wrapper {
	overflow-x: hidden;
}

#sidebar-wrapper {
	min-height: 100vh;
	margin-left: -15rem;
	-webkit-transition: margin .25s ease-out;
	-moz-transition: margin .25s ease-out;
	-o-transition: margin .25s ease-out;
	transition: margin .25s ease-out;
}

#sidebar-wrapper .sidebar-heading {
	padding: 0.875rem 1.25rem;
	font-size: 1.2rem;
}

#sidebar-wrapper .list-group {
	width: 15rem;
}

#page-content-wrapper {
	min-width: 100vw;
}

#wrapper.toggled #sidebar-wrapper {
	margin-left: 0;
}

@media ( min-width : 768px) {
	#sidebar-wrapper {
		margin-left: 0;
	}
	#page-content-wrapper {
		min-width: 0;
		width: 100%;
	}
	#wrapper.toggled #sidebar-wrapper {
		margin-left: -15rem;
	}
}

/* 		SIDEBAR END */
/* WATCHFORM START */
#follow {
	margin-bottom: 20px;
}
/* WATCHFORM END */

/* uplord START */
#uplordTitle {
	margin-left: 30px;
	margin-top: 30px;
}

#uplordSTY {
	margin-left: 100px;
	margin-right: 30px;
	margin-bottom: 30px;
}

#deleteSTY {

}

#uploadsub {
	margin-top: 30px;
}

#titleSTY {
	margin-top: 20px;
}

#movieSTY {
	margin-left: 20px;
	margin-bottom: 40px;
}

/* uplord END */
</style>

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light upper-bar">
		<div class="col-3">
			<img src="/resources/img/logo_home.png" class="main-logo img-fluid"
				href="/">
		</div>

		<form action="/video/searchForm" method="get" id="searchForm"
			class="form-inline my-2 my-lg-0 col-6">
			<input class="form-control mr-sm-2 search-bar" type="search"
				value="${searchText }" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse col-3"
			id="navbarSupportedContent">
			<ul class="navbar-nav col-3">
				<li class="nav-item active"><a class="nav-link"
					href="/video/editorForm"><i class="fas fa-film"></i>Editor</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/video/uploadEditForm"><i class="fas fa-cloud-upload-alt"></i>Upload</a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="/others/alarmForm"><i class="fas fa-bell"></i>Alarm</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img id="img"
						src="/resources/img/logo_home.png" class="rounded-circle">
						${sessionScope.loginName } <%--                         <c:if test="${empty sessionScope.loginId}">
                        	Manager
                        </c:if>
                        <c:otherwise>
                        	${sessionScope.loginName }
                        </c:otherwise> --%>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/user/editInfoForm">개인정보 수정</a> <a
							class="dropdown-item" href="/stage/myStageForm">My Stage</a> <a
							class="dropdown-item" href="/membership/membershipForm">결제 및
							멤버십</a> <a class="dropdown-item" href="/boomMaster/bmMngForm">붐마스터
							관리</a> <a class="dropdown-item" href="/manager/crmForm">고객센터</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/user/logout">로그아웃</a>
					</div></li>
			</ul>
		</div>
	</nav>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
	<!--Main Contents-->
	<div class="d-flex" id="wrapper">
		<!-- Sidebar -->
		<div class="bg-light border-right" id="sidebar-wrapper">
			<div class="list-group list-group-flush">
				<a href="/" class="list-group-item list-group-item-action bg-light">Home</a>
				<a href="/school/schoolForm"
					class="list-group-item list-group-item-action bg-light">School</a>
				<a href="#" class="list-group-item list-group-item-action bg-light">My
					Follows</a> <a href="#"
					class="list-group-item list-group-item-action bg-light">Trending</a>
				<a href="#" class="list-group-item list-group-item-action bg-light">Interests</a>
				<a href="#" class="list-group-item list-group-item-action bg-light">History</a>
				<a href="#" class="list-group-item list-group-item-action bg-light">Likes</a>
			</div>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- 멤버쉽  -->


		<div class="col-md-8 video_box">
			<div class="p-4 pt-3">
				<h1>맴버십</h1>
			</div>
			<br>
		<%-- <c:if test="${vo!=null }"> --%>
			<input type="hidden" id="Time2" name="Time2" value="${indate }">
			<div class="p-5 pt-3">
							<h3>현재 맴버쉽  </h3>&emsp;<a><h5>마지막 결제일 : ${indate } <br><br>
							남은 맴버쉽 날짜 : <span style="color: red;">${diff }</span>일</h5></a>
				<div class="col-7 text-right"><a class="btn btn-primary" href="/membership/payCheckForm" role="button">결제하러가기</a></div>
			</div>
	<%-- 	</c:if>
		<c:if test="${vo==null }"> --%>
			<div class="p-5 pt-3">
							<h3>현재 맴버쉽  </h3>&emsp;<a><h5>미 가입자 <br>

				<div class="col-7 text-right"><a class="btn btn-primary" href="/membership/payCheckForm" role="button">결제하러가기</a></div>
			</div>
	<%-- 	</c:if>
 --%>
			<div class="p-5 pt-3">
			<div >
				<h3>환불</h3>&emsp;<a><h5>- 고객센터 email</h5></a>
				<div class="col-7 text-right"><a class="btn btn-primary" href="#" role="button">환불 문의하기</a></div>
			</div>

			</div>
			<div  class="p-5 pt-3">
			<c:if test="${vo!=null }">
				<h3>결제내역</h3>&emsp;<a></a>
				<div class="col-7 text-right"><h5>200일</h5></div>
			</c:if>
			</div>


	</div>




	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});

		function myFunction() {
			var dots = document.getElementById("dots");
			var moreText = document.getElementById("more");
			var btnText = document.getElementById("myBtn");

			if (dots.style.display === "none") {
				dots.style.display = "inline";
				btnText.innerHTML = "SHOW MORE";
				moreText.style.display = "none";
			} else {
				dots.style.display = "none";
				btnText.innerHTML = "SHOW LESS";
				moreText.style.display = "inline";
			}
		}
	</script>
</body>
</html>