$(document).ready(function(){
	
	/* 패키지,항공,호텔 카테고리선택 */
	$('.ismenu2').click(function(){
		$('.ismenu1_trip').css('display','none');
		$('.ismenu2_air').css('display','block');
		$('.ismenu3_hotel').css('display','none');
		$('.ismenu1').css('border-bottom','1px solid black');
		$('.ismenu1').css('font-weight','normal');
		$('.ismenu2').css('border-bottom','2px solid black');
		$('.ismenu2').css('font-weight','bold');
		$('.ismenu3').css('border-bottom','1px solid black');
		$('.ismenu3').css('font-weight','normal');
		
	});
	$('.ismenu1').click(function(){
		$('.ismenu1_trip').css('display','block');
		$('.ismenu2_air').css('display','none');
		$('.ismenu3_hotel').css('display','none');
		$('.ismenu1').css('border-bottom','2px solid black');
		$('.ismenu1').css('font-weight','bold');
		$('.ismenu2').css('border-bottom','1px solid black');
		$('.ismenu2').css('font-weight','normal');
		$('.ismenu3').css('border-bottom','1px solid black');
		$('.ismenu3').css('font-weight','normal');
	});
	$('.ismenu3').click(function(){
		$('.ismenu1_trip').css('display','none');
		$('.ismenu2_air').css('display','none');
		$('.ismenu3_hotel').css('display','block');
		$('.ismenu1').css('border-bottom','1px solid black');
		$('.ismenu1').css('font-weight','normal');
		$('.ismenu2').css('border-bottom','1px solid black');
		$('.ismenu2').css('font-weight','normal');
		$('.ismenu3').css('border-bottom','2px solid black');
		$('.ismenu3').css('font-weight','bold');
	});
	
	/* 패키지_출발지 선택 모달 */
	$('.tripselectwhere').click(function(){
		$('.tripoption').css('display','block');
		$('.tripselectwhere').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw1').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;서울(인천/김포) 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw2').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;부산 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw3').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;대구 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw4').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;청주 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw5').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;광주 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw6').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;제주 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw7').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;양양 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.tripwhere.tw8').click(function(){
		$('.tripselectwhere').html('<img src="/img/placeholder.png" width=15 height=15>&nbsp;강원 출발');
		$('.tripoption').css('display','none');
		$('.tripselectwhere').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	
	/* 패키지_여행시작일 선택 모달 */
	$('.tripselectwhen').click(function(){
		$('.tripoptiondate').css('display','block');
		$('.tripselectwhen').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoptiondate').css('display','none');
		$('.tripselectwhen').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('#tripdate').change(function(){
		var tripdate1 = $('#tripdate').val();
		$('.tripselectwhen').html('<img src="/img/calendar.png" width=15 height=15>&nbsp;'+tripdate1);
	});
	
	/* 패키지_항공권,우리끼리 */
	
	$('.tripair').click(function(){
		$('.tripair').css('display','none');
		$('.tripairno').css('display','block');
	});
	
	$('.tripairno').click(function(){
		$('.tripair').css('display','block');
		$('.tripairno').css('display','none');
	});
	
	$('.tripus').click(function(){
		$('.tripus').css('display','none');
		$('.tripusno').css('display','block');
	});
	
	$('.tripusno').click(function(){
		$('.tripus').css('display','block');
		$('.tripusno').css('display','none');
	});
	
	/* 항공_왕복,편도 클릭 */
	$('.is_flight').click(function(){
		$('.is_flight').css('border','1px solid black');
		$('.is_flight').css('background','black');
		$('.is_flight').css('color','white');
		$('.is_flight2').css('border','1px solid white');
		$('.is_flight2').css('background','white');
		$('.is_flight2').css('color','black');
		$('.ismenu2_air_arrow1').css('display','block');
		$('.ismenu2_air_arrow1').css('display','inline-block');
		$('.ismenu2_air_arrow2').css('display','none');
		$('.is_air_hide1').css('display','block');
		$('.is_air_hide1').css('display','inline-block');
		$('.is_air_hide2').css('display','none');
	});
	$('.is_flight2').click(function(){
		$('.is_flight2').css('border','1px solid black');
		$('.is_flight2').css('background','black');
		$('.is_flight2').css('color','white');
		$('.is_flight').css('border','1px solid white');
		$('.is_flight').css('background','white');
		$('.is_flight').css('color','black');
		$('.ismenu2_air_arrow1').css('display','none');
		$('.ismenu2_air_arrow2').css('display','block');
		$('.ismenu2_air_arrow2').css('display','inline-block');
		$('.is_air_hide2').css('display','block');
		$('.is_air_hide1').css('display','none');
	});
	
	/* 항공_가는날 오는날 선택 모달 */
	/* 가는날 */
	$('.is_air1').click(function(){
		$('.tripoptiondate1').css('display','block');
		$('.is_air1').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoptiondate1').css('display','none');
		$('.is_air1').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('#tripdate1').change(function(){
		var tripdate11 = $('#tripdate1').val();
		$('.is_air1').html('<img src="/img/calendar.png" width=15 height=15>&nbsp;'+tripdate11);
	});
	
	/* 가는날_편도 */
	$('.is_air5').click(function(){
		$('.tripoptiondate3').css('display','block');
		$('.is_air5').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoptiondate3').css('display','none');
		$('.is_air5').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('#tripdate3').change(function(){
		var tripdate33 = $('#tripdate3').val();
		$('.is_air3').html('<img src="/img/calendar.png" width=15 height=15>&nbsp;'+tripdate33);
	});
	
	/* 오는날 */
	$('.is_air2').click(function(){
		$('.tripoptiondate2').css('display','block');
		$('.is_air2').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoptiondate2').css('display','none');
		$('.is_air2').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('#tripdate2').change(function(){
		var tripdate22 = $('#tripdate2').val();
		$('.is_air2').html('<img src="/img/calendar.png" width=15 height=15>&nbsp;'+tripdate22);
	});
	
	/* 항공_인원수 선택 */
	$('.is_air3').click(function(){
		$('.is_air_people').css('display','block');
		$('.is_air3').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.is_air_people').css('display','none');
		$('.is_air3').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.is_air_people_cnt.plus').click(function(){
		var people_cnt = Number($('#is_air_people_input').val())+1;
		if(people_cnt > 9){
			people_cnt = 9;
		}
		$('#is_air_people_input').val(Number(people_cnt));
		$('.is_air3').html('<img src="/img/profile.png" width=15 height=15>&nbsp;'+people_cnt);
	});
	$('.is_air_people_cnt.minus').click(function(){
		var people_cnt = Number($('#is_air_people_input').val())-1;
		if(people_cnt <= 0){
			people_cnt = 1;
		}
		$('.is_air_people_input').val(Number(people_cnt));
		$('.is_air3').html('<img src="/img/profile.png" width=15 height=15>&nbsp;'+people_cnt);
	});
	
	/* 항공_좌석등급선택 */
	$('.is_air4').click(function(){
		$('.seatoption').css('display','block');
		$('.is_air4').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.seatoption').css('display','none');
		$('.is_air4').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	
	$('.seatposition.sp1').click(function(){
		$('.is_air4').html('<img src="/img/seat.png" width=15 height=15>&nbsp;일반석');
		$('.seatoption').css('display','none');
		$('.is_air4').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.seatposition.sp2').click(function(){
		$('.is_air4').html('<img src="/img/seat.png" width=15 height=15>&nbsp;프리미엄 일반석');
		$('.seatoption').css('display','none');
		$('.is_air4').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.seatposition.sp3').click(function(){
		$('.is_air4').html('<img src="/img/seat.png" width=15 height=15>&nbsp;비즈니스석');
		$('.seatoption').css('display','none');
		$('.is_air4').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.seatposition.sp4').click(function(){
		$('.is_air4').html('<img src="/img/seat.png" width=15 height=15>&nbsp;일등석');
		$('.seatoption').css('display','none');
		$('.is_air4').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	
	/* 호텔_가는날 오는날 */
	/* 가는날 */
	$('.is_hotel1').click(function(){
		$('.tripoptiondate4').css('display','block');
		$('.is_hotel1').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoptiondate4').css('display','none');
		$('.is_hotel1').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('#tripdate4').change(function(){
		var tripdate44 = $('#tripdate4').val();
		$('.is_hotel1').html('<img src="/img/calendar.png" width=15 height=15>&nbsp;'+tripdate44);
	});
	
	/* 오는날 */
	$('.is_hotel2').click(function(){
		$('.tripoptiondate5').css('display','block');
		$('.is_hotel2').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.tripoptiondate5').css('display','none');
		$('.is_hotel2').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('#tripdate5').change(function(){
		var tripdate55 = $('#tripdate5').val();
		$('.is_hotel2').html('<img src="/img/calendar.png" width=15 height=15>&nbsp;'+tripdate55);
	});
	
	/* 호텔_인원수 선택 */
	$('.is_hotel3').click(function(){
		$('.is_hotel_people').css('display','block');
		$('.is_hotel3').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.is_hotel_people').css('display','none');
		$('.is_hotel3').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.is_hotel_people_cnt.plus').click(function(){
		var people_cnt = Number($('#is_hotel_people_input').val())+1;
		if(people_cnt > 9){
			people_cnt = 9;
		}
		$('#is_hotel_people_input').val(Number(people_cnt));
		$('.is_hotel3').html('<img src="/img/profile.png" width=15 height=15>&nbsp;'+people_cnt);
	});
	$('.is_hotel_people_cnt.minus').click(function(){
		var people_cnt = Number($('#is_hotel_people_input').val())-1;
		if(people_cnt <= 0){
			people_cnt = 1;
		}
		$('.is_hotel_people_input').val(Number(people_cnt));
		$('.is_hotel3').html('<img src="/img/profile.png" width=15 height=15>&nbsp;'+people_cnt);
	});
	
	/* 호텔_객실수 선택 */
	$('.is_hotel4').click(function(){
		$('.is_hotel_room').css('display','block');
		$('.is_hotel4').css('border','1px solid #b8b1ff');
		$('.modal').css('display','block');
	});
	$('.modal').click(function(){
		$('.is_hotel_room').css('display','none');
		$('.is_hotel4').css('border','1px solid white');
		$('.modal').css('display','none');
	});
	$('.is_hotel_room_cnt.plus').click(function(){
		var room_cnt = Number($('#is_hotel_room_input').val())+1;
		if(room_cnt > 9){
			room_cnt = 9;
		}
		$('#is_hotel_room_input').val(Number(room_cnt));
		$('.is_hotel4').html('<img src="/img/room-key.png" width=15 height=15>&nbsp;'+room_cnt);
	});
	$('.is_hotel_room_cnt.minus').click(function(){
		var room_cnt = Number($('#is_hotel_room_input').val())-1;
		if(room_cnt <= 0){
			room_cnt = 1;
		}
		$('.is_hotel_room_input').val(Number(room_cnt));
		$('.is_hotel4').html('<img src="/img/room-key.png" width=15 height=15>&nbsp;'+room_cnt);
	});
	
});








