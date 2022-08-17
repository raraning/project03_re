<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/join.css">
<script type="text/javascript" src="/js/hotelsellregist.js" ></script>
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">숙소 상품 판매하기</div>
		<div style="height:30px"> </div>
		<div>
			<div style="display:inline-block;width:320px"></div>
			<div style="display:inline-block;font-size:16px;">
			<form method="post" onsubmit="return check()">
				<div>
					<div class="joinname">숙소 종류</div>
					<div style="display:inline-block;"><input type="radio" id="h_class" class="h_class_h" name="h_class" value="1" checked>호텔<input type="radio" id="h_class" class="h_class_p" name="h_class" value="2">펜션</div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 선택</div>
					<div style="display:inline-block;" class="sel_hotel">
						<select id="h_name" name="h_name">
							<option selected disabled hidden>호텔을 선택해 주세요</option>
							<c:forEach var="hotel" items="${listhotel}">
							<option>${hotel.h_name }</option>
							</c:forEach>
						</select>
					</div>
					<div style="display:inline-block;display:none;" class="sel_pension">
						<select id="h_name" name="h_name">
							<option selected disabled hidden>펜션을 선택해 주세요</option>
							<c:forEach var="hotel" items="${listpension}">
							<option>${hotel.h_name }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div style="height:10px"> </div>
				<div class="select_hotel">
					<div class="joinname">룸 등급 선택</div>
					<div style="display:inline-block;">
						<select id="h_room" name="h_room">
							<option selected disabled hidden>룸을 선택해 주세요</option>
							<option>트윈/더블룸</option>
							<option>디럭스룸</option>
							<option>럭셔리룸</option>
							<option>스위트룸</option>
						</select>
					</div>
				</div>
				<div class="select_pension" style="display:none;">
					<div class="joinname">룸 이름 입력</div>
					<div style="display:inline-block;">
						<input id="h_room" name="h_room">
					</div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">조식 포함 여부</div>
					<div style="display:inline-block;">
						<input type="radio" id="breakfast" name="breakfast" checked>미포함
						<input type="radio" id="breakfast" name="breakfast">포함
					</div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">1박 기준 가격</div>
					<div style="display:inline-block;"><input id="h_price" name="h_price"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">적립포인트</div>
					<div style="display:inline-block;"><input id="h_point" name="h_point"></div>
				</div>
				<div style="height:20px"> </div>
				<div style="text-align:center">
					<div><input type="submit" value="숙소입력" class="joinbutton2"></div>
				</div>
				<div style="height:20px"> </div>
				</form>
			</div>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>