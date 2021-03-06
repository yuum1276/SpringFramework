<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--jstl를 사용하겠다는 선언, uri로 식별 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="divNameList">
	<!-- c:forEach을 이용하여 이름 목록을 가진 nameList를 요소 순서대로 출력-->
		<c:forEach var="name" items="${nameList }">
			<a href="getName.do?firstName=${name.firstName }&lastName=${name.lastName }">${name.firstName } ${name.lastName }</a> <!-- name으로 꺼내서 하나씩 찍어줌 -->
			 <br/>
		</c:forEach>
		
		<input var="name" items="${nameList }">
		<a href="getName.do?firstName=${name.firstName }&lastName=${name.lastName }">${name.firstName } ${name.lastName }</a>
		<!-- 위 생성 이후 getName.do를 컨트롤러에 만들어줌 -->
	</div>
	<form id="insertNameForm" action="insertName.do" method="post">
	<input type="text" name="firstName" placeholder="이름">
	<input type="text" name="lastName" placeholder="성">
	<button type="submit">등록</button>
	</form>
</body>
</html>

