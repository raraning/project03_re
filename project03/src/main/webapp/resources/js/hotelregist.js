function check(){
	
	if(h_name.value == ""){
		alert("숙소명을 입력해주세요");
		h_name.focus();
		return false;
	}
	
	if(h_star.value == ""){
		alert("숙소성급을 입력해주세요");
		h_star.focus();
		return false;
	}
	
	if(h_people.value == ""){
		alert("객실당 수용 인원 수를 입력해주세요");
		h_people.focus();
		return false;
	}
	
	if(h_country.value == ""){
		alert("숙소 지역을 입력해주세요");
		h_country.focus();
		return false;
	}
	
	if(h_address.value == ""){
		alert("숙소 주소를 입력해주세요");
		h_address.focus();
		return false;
	}
	
	if(checkin.value == ""){
		alert("체크인 시간을 입력해주세요");
		checkin.focus();
		return false;
	}
	
	if(checkout.value == ""){
		alert("체크아웃 시간을 입력해주세요");
		checkout.focus();
		return false;
	}
	
	if(floor.value == ""){
		alert("숙소 층수를 입력해주세요");
		floor.focus();
		return false;
	}
	
	if(rooms.value == ""){
		alert("숙소 룸 개수를 입력해주세요");
		rooms.focus();
		return false;
	}
	
	if(h_tel.value == ""){
		alert("숙소 전화번호를 입력해주세요");
		h_tel.focus();
		return false;
	}
	
	if(h_fax.value == ""){
		alert("숙소 팩스번호를 입력해주세요");
		h_fax.focus();
		return false;
	}
	
	document.submit();
}




