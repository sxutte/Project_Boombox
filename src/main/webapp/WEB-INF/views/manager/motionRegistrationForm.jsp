<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리페이지</title>

<link href="/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">

</head>
<body>
<div style="margin: 30px;">
<h1>모션 등록 페이지</h1><br>

<a href="/" class="btn btn-dark">메인홈으로 가기</a><br><br>
	<a href="/manager/reportManagerForm" class="btn btn-danger">신고관리</a>
	&emsp;
	<a href="/manager/motionRegistrationForm" class="btn btn-success">모션등록</a>
	&emsp;
	<a href="/manager/boomMasterRegistrationForm" class="btn btn-warning">붐마등록</a>
	&emsp;
	<a href="/manager/adRegistrationForm" class="btn btn-light">광고등록</a>
	&emsp;
	<a href="/manager/crmManagerForm" class="btn btn-primary">고객센터 관리</a>
	&emsp;
<!-- 	<a href="/manager/membershipManagerForm" class="btn btn-secondary">멤버십관리</a>
	&emsp; -->


<hr class="one" style="width: 100%; border-bottom: 0px; text-align: left; margin-left: 0px">
<form action="/motion/upload" method="post" enctype="multipart/form-data">
	Video ID<input type="text" name="motion_video_id" value="${video_id}"><br>
	Motion Title<input type="text" name="motion_title"><br>
	Motion Class<br>
	자세교정<input type="radio" name="motion_class" value="1" checked="checked">
	카운트<input type="radio" name="motion_class" value="2"><br>
	metadata.json<input type="file" name="uploadMetadata"><br>
	model.json<input type="file" name="uploadModel"><br>
	weight.zip<input type="file" name="uploadweight"><br>
	
	사진 넣기 250*250<input type="file" name="uploadInfoPhoto"><br>
	설명<textarea rows="3" cols="25" name="uploadInfo"></textarea>
	<input type="submit" value="Upload">
</form>

	


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</div>
</body>
</html>