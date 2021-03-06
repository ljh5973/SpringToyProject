<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<script src="https://kit.fontawesome.com/f824491a2f.js" crossorigin="anonymous"></script>
	 <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath }/">
                            <img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="${pageContext.request.contextPath }/">Homepage</a></li>
                                <li><a href="${pageContext.request.contextPath }/movie/category">Categories</a>
                                </li>
                                <li><a href="map">Map</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- 지도 -->
                
                
                <div class="col-lg-2">
                    <div class="header__right">
                        <!-- 로그인 페이지  -->
                        <!--  <a href="${pageContext.request.contextPath }/user/login"><span class="icon_profile"></span></a> -->
                        <c:if test="${empty login}">
                        <a href="${pageContext.request.contextPath }/user/login"><span class="icon_profile"> 로그인</span></a>
                        </c:if>
                        <c:if test="${not empty login }">
                        <!-- TODO: 유저정보 페이지 생성 -->
                        <a href="${pageContext.request.contextPath}">${login.name}</a>
                        <!-- 로그인시 -> 로그아웃 -->
                        
                        <a href="${pageContext.request.contextPath}/user/logout"><span>로그아웃</span></a>
                        </c:if>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>

