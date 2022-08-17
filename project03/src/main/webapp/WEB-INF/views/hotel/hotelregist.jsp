<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/join.css">
<script type="text/javascript" src="/js/hotelregist.js" ></script>
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">숙소 입력</div>
		<div style="height:30px"> </div>
		<div>
			<div style="display:inline-block;width:320px"></div>
			<div style="display:inline-block;font-size:16px;">
			<form method="post" onsubmit="return check()" enctype="multipart/form-data">
				<div>
					<div class="joinname">숙소명</div>
					<div style="display:inline-block;"><input id="h_name" name="h_name"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 종류</div>
					<div style="display:inline-block;"><input type="radio" id="h_class" name="h_class" value="1" checked>호텔<input type="radio" id="h_class" name="h_class" value="2">펜션</div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 성급</div>
					<div style="display:inline-block;"><input type="number" min="1" max="5" id="h_star" name="h_star"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">객실당 수용 인원 수</div>
					<div style="display:inline-block;"><input type="number" min="1" max="30" id="h_people" name="h_people"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 지역</div>
					<div style="display:inline-block;"><input id="h_country" name="h_country"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 주소</div>
					<div style="display:inline-block;"><input id="h_address" name="h_address"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">체크인 시간</div>
					<div style="display:inline-block;"><input id="checkin" name="checkin"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">체크아웃 시간</div>
					<div style="display:inline-block;"><input id="checkout" name="checkout"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 층수</div>
					<div style="display:inline-block;"><input id="floor" name="floor"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 룸 개수</div>
					<div style="display:inline-block;"><input id="rooms" name="rooms"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 전화번호</div>
					<div style="display:inline-block;"><input id="h_tel" name="h_tel"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 팩스</div>
					<div style="display:inline-block;"><input id="h_fax" name="h_fax"></div>
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