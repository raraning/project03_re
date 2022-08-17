<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/mymenu.css">
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">마이메뉴</div>
		<div>내 정보 수정</div>
		<a href="/hotel/hotelregist"><div>숙소 등록하기</div></a>
		<a href="/hotel/hotelsellregist"><div>숙소상품 판매하기</div></a>
		<a href="/hotel/hotelselllist"><div>판매중인 숙소상품 목록</div></a>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>