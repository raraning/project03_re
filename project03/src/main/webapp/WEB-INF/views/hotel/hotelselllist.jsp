<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/hotelselllist.css">
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">판매중인 숙소상품 목록</div>
		<div style="height:30px;"></div>
		<div style="font-size:15px;">
			<div class="selllisttop">
				<div style="display:inline-block;">등록번호</div>
				<div style="display:inline-block;">숙소이름</div>
				<div style="display:inline-block;">룸등급</div>
				<div style="display:inline-block;">조식 포함 여부</div>
				<div style="display:inline-block;">1박 기준 가격</div>
				<div style="display:inline-block;">적립포인트</div>
			</div>
			<c:forEach var="list" items="${hotelselllist}">
			<div>
				<div style="display:inline-block;">${list.h_uid}</div>
				<div style="display:inline-block;">${list.h_name}</div>
				<div style="display:inline-block;">${list.h_room}</div>
				<div style="display:inline-block;">${list.breakfast}</div>
				<div style="display:inline-block;">${list.h_price}</div>
				<div style="display:inline-block;">${list.h_point}</div>
			</div>
			</c:forEach>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>