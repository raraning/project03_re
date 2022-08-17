<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>토리투어</title>
<link rel="shortcut icon" type="image⁄x-icon" href="/img/honeymoon.png">
<link rel="stylesheet" href="/css/header.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
</style>
<script>
$(document).ready(function(){
	$('.menuoverseas').hover(function(){
		$('.navimenu1').css('display','block');
	},function(){
		$('.navimenu1').css('display','none');
	});
	$('.navimenu1').hover(function(){
		$('.navimenu1').css('display','block');
	},function(){
		$('.navimenu1').css('display','none');
	});
	
	$('.menujeju').hover(function(){
		$('.navimenu2').css('display','block');
	},function(){
		$('.navimenu2').css('display','none');
	});
	$('.navimenu2').hover(function(){
		$('.navimenu2').css('display','block');
	},function(){
		$('.navimenu2').css('display','none');
	});
	
	$('.menuhotel').hover(function(){
		$('.navimenu3').css('display','block');
	},function(){
		$('.navimenu3').css('display','none');
	});
	$('.navimenu3').hover(function(){
		$('.navimenu3').css('display','block');
	},function(){
		$('.navimenu3').css('display','none');
	});
	
});
</script>
</head>
<body>
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<!-- 로고/검색창/로그인/마이페이지 시작 -->
		<div>
			<!-- 로그인 회원가입 고객센터 -->
			<div class="head1">
				<div class="headtop ht1"> </div>
				<c:choose>
					<c:when test="${sessionScope.id != null}">
						<div class="headtop">${sessionScope.name}님 즐거운여행 하세요!<img src="/img/hot-air-balloon.png" width=17 height=17></div>
						<div class="headtop" style="width:10px;"> </div>
						<div class="headtop"><a href="/member/logout">로그아웃</a></div>
					</c:when>
					<c:when test="${sessionScope.c_id != null}">
						<div class="headtop">파트너 ${sessionScope.c_name}님 환영합니다!<img src="/img/hot-air-balloon.png" width=17 height=17></div>
						<div class="headtop" style="width:10px;"> </div>
						<div class="headtop"><a href="/member/logout">로그아웃</a></div>
					</c:when>
					<c:otherwise>
						<div class="headtop"><a href="/member/logintype">로그인</a></div>
						<div class="headtop" style="width:5px;"> </div>
						<div class="headtop"><a href="/member/join">회원가입</a></div>
					</c:otherwise>
				</c:choose>
				<div class="headtop" style="width:5px;"> </div>
				<div class="headtop"><a href="/test/login">고객센터</a></div>
			</div>
			<!-- 로고 검색 마이페이지 -->
			<div class="head2">
				<div style="width:20px;display:inline-block;"> </div>
				<div class="headtop htlogo">
					<a href="/">
						<div style="display:inline-block;"><img src="/img/honeymoon.png" width=60 height=60></div>
						<div class="logotext">TORY<br>TOUR</div>
					</a>
				</div>
				<div class="headtop"></div>
				<div class="headtop">
					<div class="searchbox"><input class="search" id="search" name="search"></div><div style="display:inline-block;"><button style="cursor:pointer"><img src="/img/searching.png" width=50 height=50></button></div>
				</div>
				<div class="headtop ht2"></div>
				<div class="headtop">
				<c:choose>
					<c:when test="${sessionScope.id != null}">
						<a href="/member/mymenu">
						<div style="text-align:center"><img src="/img/profile.png" width=40 height=40></div>
						<div style="text-align:center;color:#2e4da5;font-weight:bold">마이메뉴</div>
						</a>
					</c:when>
					<c:when test="${sessionScope.c_id != null}">
						<a href="/company/companymenu">
						<div style="text-align:center"><img src="/img/profile.png" width=40 height=40></div>
						<div style="text-align:center;color:#2e4da5;font-weight:bold">파트너메뉴</div>
						</a>
					</c:when>
					<c:otherwise>
						<a href="/member/login">
						<div style="text-align:center"><img src="/img/profile.png" width=40 height=40></div>
						<div style="text-align:center;color:#2e4da5;font-weight:bold">마이메뉴</div>
						</a>
					</c:otherwise>
				</c:choose>
				</div>
				<div style="width:10px;display:inline-block;"> </div>
				<div class="headtop">
					<div style="text-align:center"><img src="/img/file-and-folder.png" width=40 height=40></div>
					<div style="text-align:center;color:#2e4da5;font-weight:bold">예약내역</div>
				</div>
				<div style="width:10px;display:inline-block;"> </div>
				<div class="headtop">
					<div style="text-align:center"><img src="/img/heart (1).png" width=40 height=40></div>
					<div style="text-align:center;color:#2e4da5;font-weight:bold">찜</div>
				</div>
			</div>
		</div>
		<!-- 로고/검색창/로그인/마이페이지 끝 -->
	</div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="height:15px"> </div>
	<!-- 메뉴바 시작 -->
	<div class="navi">
		<div style="display:inline-block;width:400px"> </div>
		<div class="menubar">
			<div class="menuleft">
				<div class="menubar1" style="margin-top:10px;"><img src="/img/menu.png" width=20 height=20></div>
				<div class="menubar1" style="width:5px;"> </div>
				<div class="menubar1">전체메뉴</div>
			</div>
			<div class="menuright">
				<div class="menubar1" style="width:25px;"> </div>
				<div class="menuoverseas"><a href="">해외여행</a></div>
				<div class="menubar1" style="width:20px;"> </div>
				<div class="menujeju"><a href="">제주/국내여행</a></div>
				<div class="menubar1" style="width:20px;"> </div>
				<div class="menubar1"><a href="">항공</a></div>
				<div class="menubar1" style="width:20px;"> </div>
				<a href="/hotel/hotelmain"><div class="menuhotel">호텔</div></a>
				<div class="menubar1" style="width:20px;"> </div>
				<div class="menubar1"><a href="">투어/입장권</a></div>
			</div>
		</div>
		<div style="display:inline-block;width:400px"> </div>
	</div>
	<div class="navimenu1">.
		<div class="menubar1" style="width:580px;"> </div>
		<div class="menubar1"><a href="">동남아/대만/서남아</a></div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">괌/사이판/호주/뉴질랜드</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">유럽/아프리카</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">미주/중남미/하와이</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">일본</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">중국/홍콩/극동러시아</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">부산/대구/무안/청주출발</div>
		<div class="menubar1" style="width:580px;"> </div>
	</div>
	<div class="navimenu2">
		<div class="menubar1" style="width:580px;"> </div>
		<div class="menubar1">제주/국내여행</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">제주렌터카</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">기차예약</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">국내골프</div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1">단독여행문의</div>
		<div class="menubar1" style="width:930px;"> </div>
	</div>
	<div class="navimenu3">
		<div class="menubar1" style="width:580px;"> </div>
		<div class="menubar1"><a href="">호텔예약</a></div>
		<div class="menubar1" style="width:20px;"> </div>
		<div class="menubar1"><a href="">펜션/풀빌라예약</a></div>
		<div class="menubar1" style="width:1180px;"> </div>
	</div>
	
	<!-- 메뉴바 끝 -->
</div>

