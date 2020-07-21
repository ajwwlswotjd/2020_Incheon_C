<!DOCTYPE html>
<html lang="ko">

<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="js/jquery-ui-1.12.1/jquery-ui.css">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="js/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
	<script src="js/jquery-ui-1.12.1/jquery-ui.js"></script>
	<script src="js/common.js"></script>
	<title>인천 C 모듈</title>
</head>

<body>
	<div id="login" title="로그인">
		<form action="#" onsubmit="return login_submit(this);">
			<div class="input-group mt-1">
				<input type="text" class="form-control" id="login_id" placeholder="아이디" name="id">
			</div>
			<div class="input-group mt-2">
				<input type="password" class="form-control" id="login_pwd" placeholder="비밀번호" name="pwd">
			</div>
			<button type="submit" class="btn btn-primary mt-2">로그인</button>
		</form>
	</div>

	<div id="join" title="회원가입">
		<form action="#" onsubmit="return join_submit(this);">
			<div class="input-group mt-1">
				<input type="text" class="form-control" id="join_id" placeholder="아이디" name="id">
				<div class="input-group-append">
					<span class="btn btn-primary" id="join_dup_btn">중복 검사</span>
				</div>
			</div>
			<span class="join_id_duplicate"></span>
			<div class="input-group mt-2">
				<input type="password" class="form-control join_condition" id="join_pwd" placeholder="비밀번호" name="pwd">
			</div>
			<div class="input-group mt-2">
				<input type="text" class="form-control join_condition" id="join_name" placeholder="이름" name="name">
			</div>
			<div class="input-group mt-2">
				<input type="text" class="form-control" id="join_phone" placeholder="전화번호" name="phone" maxlength="13">
			</div>
			<input type="hidden" id="captcha_answer">
			<div class="input-group mt-3" id="join_cap_box">
				<!-- <img src="/captcha.php" alt=""> -->
			</div>
			<div class="input-group mt-2">
				<button type="button" class="btn btn-info" id="join_cap_reset">캡챠 새로고침</button>
			</div>
			<div class="input-group mt-2">
				<input type="text" class="form-control" id="join_captcha" placeholder="CAPTCHA" name="captcha" maxlength="6">
			</div>
			<p class="join_txt"></p>
			<button type="submit" class="btn btn-primary mt-2">회원가입</button>
		</form>
	</div>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.html">
				<div class="logo-graphic">로고</div>
			</a>
			<div class="collapse navbar-collapse nav">
				<ul class="navbar-nav mr-auto">
					<?php if(!__SIGN) : ?>
					<li class="nav-item">
						<a class="nav-link nav-login" href="#">로그인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link nav-join" href="#">회원가입</a>
					</li>
					<?php else : ?>
					<li class="nav-item">
						<a class="nav-link" href="/user/logout">로그아웃</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
							<?= htmlentities($_SESSION['user']->name)  ?>
						</a>
					</li>
					<?php endif; ?>
					<li class="nav-item">
						<a class="nav-link" href="admin_venue_manager.html">관리자</a>
					</li>
				</ul>
			</div>
		</nav>