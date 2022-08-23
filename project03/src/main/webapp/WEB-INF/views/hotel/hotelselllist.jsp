<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/hotelselllist.css">
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">판매중인 숙소상품 목록</div>
		<div style="height:30px;"></div>
		<div style="font-size:15px;">
			<div class="selllisttop">
				<div class="selllistmenu">등록번호</div>
				<div class="selllistmenu">숙소이름</div>
				<div class="selllistmenu">룸등급</div>
				<div class="selllistmenu">조식 포함 여부</div>
				<div class="selllistmenu">1박 기준 가격</div>
				<div class="selllistmenu">적립포인트</div>
			</div>
			<c:forEach var="list" items="${hotelselllist}">
			<div>
				<div class="selllistmenu">${list.h_uid}</div>
				<div class="selllistmenu">${list.h_name}</div>
				<div class="selllistmenu">${list.h_room}</div>
				<div class="selllistmenu">
					<c:choose>
						<c:when test="${list.breakfast eq '1'}">조식 불포함</c:when>
						<c:when test="${list.breakfast eq '2'}">조식 포함</c:when>
					</c:choose>
				</div>
				<div class="selllistmenu"><fmt:formatNumber value="${list.h_price}" pattern="#,###"/>원</div>
				<div class="selllistmenu">P&nbsp;<fmt:formatNumber value="${list.h_point}" pattern="#,###"/></div>
			</div>
			</c:forEach>
		</div>
	</div>
	<div style="height:30px"> </div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>