<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Đăng nhập</title>
</head>
<body>
	<div class="login-dark"
		style="
        background-image: url('<c:url value='/template/img/tree1.jpg' />');
      ">

		<form action="<c:url value='/dang-nhap'/>" method="POST"
			style="background-color: rgba(12, 27, 16, 0.67);">
			<h2 class="sr-only">Login Form</h2>

			<legend style="color: #e7e8f0;"> &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp; Welcome! </legend>
			<legend style="color: #e6e7f0;">Sign into your account</legend>

			<h1 style="color: rgb(184, 217, 164);"></h1>
			<div class="illustration">
				<img id="avatar" class="avatar round"
					src="<c:url value='/template/img/avatar.png' />" />
			</div>
			<div class="form-group">
				<input class="form-control" type="text" id="username"
					name="username" placeholder="Username"
					style="background-color: rgba(255, 255, 255, 0.48);" />
			</div>
			<div class="form-group">
				<input class="form-control" type="password" id="passWord"
					name="passWord" placeholder="Password"
					style="background-color: rgba(255, 255, 255, 0.54);" />
			</div>
			<c:if test="${not empty message}">
				<div class="alert alert-${alert}">${message}</div>
			</c:if>

			<input type="hidden" value="login" name="action">
			<div class="form-group">
				<button class="btn btn-primary btn-block" type="submit"
					style="background-color: rgba(40, 186, 80, 0.66);">Log In</button>

			</div>
			<a class="forgot" href="#" style="color: #bbc1f2;">Forgot your
				email or password?</a><a class="forgot" href="#" style="color: #bbc1f2;">Login
				as a guest</a>
		</form>
	</div>
</body>
</html>
