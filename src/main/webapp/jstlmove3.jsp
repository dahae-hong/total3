<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="jstlmove3.jsp">
name:<input type="text" name="name" value='<c:out value="${imsi.name}"/>'><br>
address:<input type="text" name="address" value="${imsi.address}"><br>
<input type="submit" value="전송">
</form>
</body>
</html>