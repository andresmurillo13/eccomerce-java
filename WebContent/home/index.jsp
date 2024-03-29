SELECT encode(digest('clave_a_encriptar', 'md5'), 'base64');
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Custom styles for this template -->
<link href="../css/shop-homepage.css" rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="../portal/menu.jsp" />
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<jsp:include page="../portal/category.jsp" />
			</div>
			<!-- /.col-lg-3 -->
			<div class="col-lg-9">
				<jsp:include page="../portal/carousel.jsp" />
				<jsp:include page="../portal/products.jsp" />
			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<!-- Footer -->
	<jsp:include page="../portal/footer.jsp" />
	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
		
	</script>
	<script src="../js/portal.js"></script>
	<script type="text/javascript">
		getCategories(1);
		getProducts(1);
	</script>
</body>
</html>