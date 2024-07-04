<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>outputProduct.jsp</h1>
	<div>제품번호 :  ${product.productNo }</div>
	<div>제품명 :  ${product.productName }</div>
	<div>수량 :  ${product.qty }</div>
	<div>가격 :  ${product.price }</div>
	<div>별칭 :  ${product.productNickName }</div>
</body>
</html>