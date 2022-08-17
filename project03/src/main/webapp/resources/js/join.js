function check(){
	
	if(id.value == ""){
		alert("아이디를 입력해주세요");
		id.focus();
		return false;
	}
	
	if(pass.value == ""){
		alert("비밀번호를 입력해주세요");
		pass.focus();
		return false;
	}
	
	if(pass.value.length < 4){
		alert("비밀번호는 4자리 이상 입력해주세요");
		pass.focus();
		return false;
	}
	
	if(passok.value == ""){
		alert("비밀번호 확인란을 입력해주세요");
		passok.focus();
		return false;
	}
	
	if(passok.value != pass.value){
		alert("입력된 비밀번호가 일치하지 않습니다");
		passok.focus();
		return false;
	}
	
	if(membername.value == ""){
		alert("이름을 입력해주세요");
		membername.focus();
		return false;
	}
	
	if(birth.value == ""){
		alert("생년월일을 입력해주세요");
		birth.focus();
		return false;
	}
	
	if(email.value == ""){
		alert("이메일을 입력해주세요");
		email.focus();
		return false;
	}
	
	if(phone.value == ""){
		alert("전화번호를 입력해주세요");
		phone.focus();
		return false;
	}
	
	var agreement_ok = document.getElementById("agreement").checked;
	if(agreement_ok == false){
		alert("개인정보 수집·이용 동의를 해주세요");
		return false;
	}
	
	if(id_reault.value == ""){
		alert("아이디 중복확인을 해주세요");
		id.focus();
		return false;
	}
	
	if(id_reault.value == "존재하는 아이디입니다."){
		alert("아이디 중복확인을 다시 해주세요");
		id.focus();
		return false;
	}
	
	document.submit();
}




