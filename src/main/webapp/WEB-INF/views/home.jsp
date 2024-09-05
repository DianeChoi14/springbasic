<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<script>

</script>
<style>
.container {
	display : flex;
	flex-direction: row;
}
.content {
	padding : 20 px;
}
.
</style>
</head>
<body>
<div class="container">
	<div class="sideBar">
		<c:import url="./sideBar.jsp"></c:import>
	</div>
	
	<div class="header">
		<c:import url="./header.jsp"></c:import>
	</div>
</div>
<div class="content">
	<h1>
		Hello world!  
	</h1>
	
	<P>  The time on the server is ${serverTime}. </P>
	<div>${status }</div>
	
</div>
</body>
</html>
