<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
		<script>
		// 쿼리스트링 status변수의 값이 "success"일 때만 alert 띄우기
		let status = '${param.status}';
		if(status==='success')
			{
				window.alert("제품저장 성공")
			}
		
	</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div>${status }</div>
</body>
</html>
