<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h1>제품 입력 페이지</h1>

	</div>
	<form action="inputProduct" method="post">
		<div class="mb-3 mt-3">
			<label for="productNo">제품번호 : </label> <input type="text"
				class="form-control" id="productNo" placeholder="제품번호를 입력하세요..."
				name="productNo">
		</div>
		<div class="mb-3">
			<label for="productName">제품명 : </label> <input type="text"
				class="form-control" id="productName" placeholder="제품명입력 ...."
				name="productName">
		</div>
		<div class="mb-3 mt-3">
			<label for="qty">수량 : </label> <input type="number"
				class="form-control" id="qty" placeholder="제품번호를 입력하세요..."
				name="qty">
		</div>
		<div class="mb-3 mt-3">
			<label for="price">가격 : </label> <input type="text"
				class="form-control" id="price" name="price">
		</div>
		<div class="mb-3 mt-3">
			<label for="productNickName">별칭 : </label> <input type="text"
				class="form-control" id="productNickName" placeholder="별칭를 입력하세요..."
				name="productNickName">
		</div>
		
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>