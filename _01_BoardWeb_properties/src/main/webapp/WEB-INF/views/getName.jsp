<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--1. 뷰 화면을 만듦 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="updateNameForm" action="updateName.do" method="post">
		<input type="hidden" name="originalFirstName" value="${name.firstName }"> <!-- value 값 안바뀌게 설정 -->
		<input type="hidden" name="originalLastName" value="${name.lastName }"> <!-- value 값 안바뀌게 설정 -->
		<input type="text" name="firstName" value="${name.firstName }"> <!-- name을 키 값으로 설정 -->
		<input type="text" name="firstName" value="${name.lastName }">
		<button type="submit">수정</button>
	</form>
	<a href="deleName.do?firstName=${name.firstName }&lastName=${name.lastName}">삭제</a>
</body>
</html>