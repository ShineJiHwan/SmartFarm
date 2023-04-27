<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인페이지</title>
<jsp:include page="../inc/header_link.jsp"></jsp:include>
</head>
<body style="background:#eef;">
	<div class="container mt-5">
		<div class="logoBox">	
			<h2>로그인 하기</h2>
		</div>
		<form>
			<div class="form-group">
				<label class="bold-text">아이디</label>
				<input type="text" class="form-control form-control-lg" placeholder="아이디를 입력해주세요.">
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="form-group">
				<label class="bold-text">비밀번호</label>
				<input type="password" class="form-control form-control-lg" placeholder="비밀번호를 입력해주세요.">
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback" style="display: none">Please fill out this field.</div>
			</div>
			<button type="button" class="btn btn-primary float-right farm-btn">로그인</button>
		</form>
	</div>
</body>
</html>