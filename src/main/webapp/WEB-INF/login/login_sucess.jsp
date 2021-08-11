<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section>
<h1>로그인성공</h1>
[${sessionScope.id}]
<button onclick="location.href='/login/logout.jsp'">로그아웃</button><br>
<button onclick="location.href='/index.jsp'">HOME</button>
</section>
