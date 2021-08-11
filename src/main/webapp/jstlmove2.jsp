<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="imsi" value="${imsi}" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="jstlmove3.jsp">
name:<input type="text" name="name" value="${imsi.name}" disabled><br>
address:<input type="text" name="address" value="${imsi.address}" disabled><br>
<input type="submit" value="전송">
<input type="button" onclick='<jsp:forward page="jstlmove3.jsp"/>'/>
<%-- <jsp:forward page="jstlmove3.jsp"/> --%>
 </form>
</body>
</html>