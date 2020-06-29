<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- Top Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
	<button class="btn btn-primary" id="menu-toggle">Menu</button>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
			<c:choose>
				<%-- Khi user la nhan vien --%>
				<c:when test="${USERMODEL.role.code=='ADMIN'}">
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value = '/admin-home'/>"> Trang chủ <span
							class="sr-only">(current)</span></a></li>
				</c:when>

				<%-- Khi user la quan ly --%>
				<c:when test="${USERMODEL.role.code=='USER'}">
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value = '/home'/>"> Trang chủ <span
							class="sr-only">(current)</span></a></li>
				</c:when>

				<%-- Các trường hợp khác --%>
				<c:otherwise>
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value = '/home'/>"> Trang chủ <span
							class="sr-only">(current)</span></a></li>
				</c:otherwise>
			</c:choose>

			<!-- neu chua dang nhap vo -->
			<c:if test="${empty USERMODEL}">
				<li class="nav-item"><a class="nav-link"
					href='<c:url value = "/dang-nhap?action=login"/>'>Đăng nhập</a></li>
			</c:if>

			<!-- Sau khi Dang nhap vo -->
			<c:if test="${not empty USERMODEL}">
				<li class="nav-item"><a class="nav-link" href='#'>Welcome,
						${USERMODEL.fullName}</a></li>
				<li class="nav-item"><a class="nav-link"
					href='<c:url value = "/thoat?action=logout"/>'>Thoát</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Lựa chọn </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Info</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href='#'>Something else here</a>
					</div></li>
			</c:if>


		</ul>
	</div>
</nav>
