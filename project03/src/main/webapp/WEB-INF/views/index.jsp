<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/index.css">
<script type="text/javascript" src="/js/index.js" ></script>
<div class="indexback">
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:100px;"> </div>
		<div>
			<div class="indexsearch">
				<c:choose>
					<c:when test="${sessionScope.id != null}">
						<div class="istop">${sessionScope.name}님,</div>
						<div class="istop"><b>어떤 여행을 꿈꾸시나요?</b></div>
					</c:when>
					<c:otherwise>
						<div class="istop">고객님,</div>
						<div class="istop"><b>어떤 여행을 꿈꾸시나요?</b></div>
					</c:otherwise>
				</c:choose>
				<div style="height:15px;"> </div>
				<div>
					<div class="ismenu1">패키지</div><div class="ismenu2">항공</div><div class="ismenu3">호텔</div>
				</div>
				<!-- 패키지 검색 시작(ismenu1) -->
				<div class="ismenu1_trip">
					<div style="height:15px;"> </div>
					<div><input id="tripsearch" name="tripsearch" placeholder="어디로 떠나세요?"></div>
					<div style="height:10px;"> </div>
					<div>
						<div style="display:inline-block;">
							<div class="tripselectwhere"><img src="/img/placeholder.png" width=15 height=15>&nbsp;출발지 선택</div>
							<div class="tripoption">
								<div class="tripwhere tw1">서울(인천/김포)</div>
								<div class="tripwhere tw2">부산</div>
								<div class="tripwhere tw3">대구</div>
								<div class="tripwhere tw4">청주</div>
								<div class="tripwhere tw5">광주</div>
								<div class="tripwhere tw6">제주</div>
								<div class="tripwhere tw7">양양</div>
								<div class="tripwhere tw8">강원</div>
							</div>
							<div style="height:10px;"> </div>
							<div class="tripair">
								<div style="height:4px;"> </div>
								<div>
									<div style="display:inline-block;width:15px"></div>
									<div style="display:inline-block;vertical-align:middle"><img src="/img/ticket-flight (1).png" width=40 height=43></div>
									<div style="display:inline-block;width:10px"></div>
									<div style="display:inline-block;vertical-align:middle">항공권은<br>있어요</div>
								</div>
							</div>
							<div class="tripairno">
								<div style="height:4px;"> </div>
								<div>
									<div style="display:inline-block;width:15px"></div>
									<div style="display:inline-block;vertical-align:middle"><img src="/img/ticket-flight.png" width=40 height=43></div>
									<div style="display:inline-block;width:10px"></div>
									<div style="display:inline-block;vertical-align:middle">항공권은<br>있어요</div>
								</div>
							</div>
						</div>
						<div style="display:inline-block;">
							<div class="tripselectwhen"><img src="/img/calendar.png" width=15 height=15>&nbsp;여행시작일 선택</div>
							<div class="tripoptiondate">
								<input type="date" id="tripdate" name="tripdate" class="tripdate">
							</div>
							<div style="height:10px;"> </div>
							<div class="tripus">
								<div style="height:4px;"> </div>
								<div>
									<div style="display:inline-block;width:15px"></div>
									<div style="display:inline-block;vertical-align:middle"><img src="/img/people.png" width=43 height=43></div>
									<div style="display:inline-block;width:10px"></div>
									<div style="display:inline-block;vertical-align:middle">우리끼리만<br>여행할래요</div>
								</div>
							</div>
							<div class="tripusno">
								<div style="height:4px;"> </div>
								<div>
									<div style="display:inline-block;width:15px"></div>
									<div style="display:inline-block;vertical-align:middle"><img src="/img/people (1).png" width=43 height=43></div>
									<div style="display:inline-block;width:10px"></div>
									<div style="display:inline-block;vertical-align:middle">우리끼리만<br>여행할래요</div>
								</div>
							</div>
						</div>
						<div style="height:15px;"> </div>
						<div class="indexbutton">패키지 검색</div>
					</div>
				</div>
				<!-- 패키지 검색 끝(ismenu1) -->
				<!-- 항공 검색 시작(ismenu2) -->
				<div class="ismenu2_air">
					<div style="height:15px;"> </div>
					<div>
						<div class="is_flight">왕복</div>
						<div class="is_flight2">편도</div>
					</div>
					<div style="height:10px;"> </div>
					<div>
						<div class="is_air"><img src="/img/placeholder.png" width=15 height=15>&nbsp;출발지</div>
						<div class="ismenu2_air_arrow1"><img src="/img/exchange.png" width=20 height=20></div>
						<div class="ismenu2_air_arrow2"><img src="/img/right-arrow.png" width=20 height=20></div>
						<div class="is_air"><img src="/img/placeholder.png" width=15 height=15>&nbsp;도착지</div>
					</div>
					<div style="height:10px;"> </div>
					<div class="is_air_hide1">
						<div class="is_air1"><img src="/img/calendar.png" width=15 height=15>&nbsp;가는날선택</div>
						<div class="tripoptiondate1">
								<input type="date" id="tripdate1" name="tripdate1" class="tripdate1">
						</div>
						<div class="is_air2"><img src="/img/calendar.png" width=15 height=15>&nbsp;오는날선택</div>
						<div class="tripoptiondate2">
								<input type="date" id="tripdate2" name="tripdate2" class="tripdate2">
						</div>
					</div>
					<div class="is_air_hide2">
						<div class="is_air5"><img src="/img/calendar.png" width=15 height=15>&nbsp;가는날선택</div>
						<div class="tripoptiondate3">
								<input type="date" id="tripdate3" name="tripdate3" class="tripdate3">
						</div>
					</div>
					<div style="height:10px;"> </div>
					<div>
						<div class="is_air3"><img src="/img/profile.png" width=15 height=15>&nbsp;인원수선택</div>
						<div class="is_air4"><img src="/img/seat.png" width=15 height=15>&nbsp;좌석등급선택</div>
						<div class="seatoption">
								<div class="seatposition sp1">일반석</div>
								<div class="seatposition sp2">프리미엄 일반석</div>
								<div class="seatposition sp3">비즈니스석</div>
								<div class="seatposition sp4">일등석</div>
							</div>
					</div>
					<div>
						<div class="is_air_people">
							<div class="is_air_people_cnt minus"><img src="/img/minus.png" width=20 height=20></div>
							<div style="display:inline-block;">&nbsp;&nbsp;&nbsp;
								<input type="number" min="1" max="9" value="1" readonly id="is_air_people_input">
							</div>
							<div class="is_air_people_cnt plus"><img src="/img/plus.png" width=20 height=20></div>
						</div>
						<div class="is_air_seat"></div>
					</div>
					<div style="height:15px;"> </div>
					<div class="indexbutton">항공권 검색</div>
				</div>
				<!-- 항공 검색 끝(ismenu2) -->
				<!-- 호텔 검색 시작(ismenu3) -->
				<div class="ismenu3_hotel">
					<div style="height:15px;"> </div>
					<div><input id="tripsearch" name="tripsearch" placeholder="어디로 떠나세요?"></div>
					<div style="height:10px;"> </div>
					<div class="is_hotel_hide1">
						<div class="is_hotel1"><img src="/img/calendar.png" width=15 height=15>&nbsp;가는날선택</div>
						<div class="tripoptiondate4">
								<input type="date" id="tripdate4" name="tripdate4" class="tripdate4">
						</div>
						<div class="is_hotel2"><img src="/img/calendar.png" width=15 height=15>&nbsp;오는날선택</div>
						<div class="tripoptiondate5">
								<input type="date" id="tripdate5" name="tripdate5" class="tripdate5">
						</div>
					</div>
					<div style="height:10px;"> </div>
					<div>
						<div class="is_hotel3"><img src="/img/profile.png" width=15 height=15>&nbsp;인원수선택</div>
						<div class="is_hotel4"><img src="/img/room-key.png" width=20 height=20>&nbsp;객실수선택</div>
					</div>
					<div>
						<div class="is_hotel_people">
							<div class="is_hotel_people_cnt minus"><img src="/img/minus.png" width=20 height=20></div>
							<div style="display:inline-block;">&nbsp;&nbsp;&nbsp;
								<input type="number" min="1" max="9" value="1" readonly id="is_hotel_people_input">
							</div>
							<div class="is_hotel_people_cnt plus"><img src="/img/plus.png" width=20 height=20></div>
						</div>
						<div class="is_hotel_room">
							<div class="is_hotel_room_cnt minus"><img src="/img/minus.png" width=20 height=20></div>
							<div style="display:inline-block;">&nbsp;&nbsp;&nbsp;
								<input type="number" min="1" max="9" value="1" readonly id="is_hotel_room_input">
							</div>
							<div class="is_hotel_room_cnt plus"><img src="/img/plus.png" width=20 height=20></div>
						</div>
					</div>
					<div style="height:15px;"> </div>
					<div class="indexbutton">숙소 검색</div>
				</div>
				<!-- 호텔 검색 끝(ismenu3) -->
			</div>
			<div style="display:inline-block;"></div>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<!-- modal -->
<div class="modal"></div>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>
