<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><dec:title default="Trang chủ" /></title>
<style>
div.fixed {
	position: absolute;
	right: 26px;
	top: 112px;
	z-index: 1;
}
</style>

<!-- css -->
<link
	href="<c:url value='/template/web/bootstrap/css/bootstrap.min.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='/template/web/css/style.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="/common/web/menu.jsp"%>
		<div id="page-content-wrapper">

			<!-- header -->
			<%@ include file="/common/web/header.jsp"%>
			<!-- header -->

			<div class="container-fluid">
				<dec:body />
			</div>
		</div>

		<!-- footer -->
		<%@ include file="/common/web/footer.jsp"%>
		<!-- footer -->
	</div>

	<script type="text/javascript"
		src="<c:url value='/template/web/jquery/jquery.min.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/template/web/bootstrap/js/bootstrap.bundle.min.js' />"></script>
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
	<script>
		$(window).resize(function() {
			var h = $(window).height(), offsetTop = 58; // Calculate the top offset

			$('#map').css('height', (h - offsetTop));
			$('#map').css('witdh', "80%");
		}).resize();
	</script>
</body>
</html>