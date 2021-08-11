<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
        <div class="navbar_log" style="align-items: center;">
            <i class="fab fa-accusoft"></i>
            <a href="#">logo</a>
        </div>
        <ul id="menu">
            <a href="/home"><li>HOME</li></a>
            <a href="/intro"><li>INTRO</li></a>
            <a href="/realchat"><li>REALCHAT</li></a>      
            <a href="/board"><li>BOARD</li></a>
            <a href="/map"><li>지도</li></a>
            <c:if test="${empty id}" >
            <a href="/login"><li>로그인</li></a>
            </c:if>
            <c:if test="${not empty id}" >
            <a href="/login/logout"><li>로그아웃[${sessionScope.id}]</li></a>
            </c:if>
        </ul>

    <ul class="navbar_icon"> 
        <a href=""><li><i class="far fa-images"></i></li></a>
        <a href=""><li><i class="far fa-envelope"></i></li></a>
        <a href=""><li><i class="far fa-user"></i></li></a>
       
    </ul>   
</nav> 
<i class="fas fa-bars" id="icon_bar"></i>