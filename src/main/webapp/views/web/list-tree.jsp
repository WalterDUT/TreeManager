<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Danh sách cây</title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value='/template/web/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/template/web/css/simple-sidebar.css'/>"
	rel="stylesheet">

</head>

<body>
	<div class="container">
		<h2>Danh sách cây</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Giống cây</th>
					<th>Loại</th>
					<th>Địa chỉ</th>
					<th>Chiều cao</th>
					<th>Tuổi</th>
					<th>Tọa độ</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${model.listResult}">
					<tr>
						<td>${item.idTree}</td>
						<td>${item.familia}</td>
						<td>${item.typeTree}</td>
						<td>${item.addressTree}</td>
						<td>${item.height}</td>
						<td>${item.ageTree}</td>
						<td>${item.latitude},${item.longitude}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>
	</div>
	<!-- /#page-content-wrapper -->


	<!-- /#wrapper -->

	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="<c:url value='/template/web/jquery/jquery.min.js' />">
		
	</script>
	<script type="text/javascript"
		src="<c:url value='/template/web/bootstrap/js/bootstrap.bundle.min.js'/>"></script>


</body>

</html>
