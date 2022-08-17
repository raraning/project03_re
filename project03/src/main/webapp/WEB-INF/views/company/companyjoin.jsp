<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/join.css">
<script type="text/javascript" src="/js/companyjoin.js" ></script>
<script>
function agreement() {
	window.open("agreement", "agreement", "width=480, height=480");
}

function id_select(id){
	$.ajax({
		url: "idok", //전송받을 페이지 경로
		type: "post", //데이터 읽어오는 방식
		dataType: "text", //데이터 방식
		data: "c_id="+$("#c_id").val(), //데이터 전달
		error:function(){ //실패일 경우
			alert("실패");
		},
		success:function(text){ //성공일 경우
			$("#id_result").html(text);
		}
	
	});
}
</script>
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">여행사 회원가입</div>
		<div style="text-align:center;font-size:15px;">토리투어에 오신 것을 환영합니다.</div>
		<div style="text-align:center;font-size:15px;">토리투어의 파트너가 되어 다양한 혜택을 누려보세요. </div>
		<div style="height:30px"> </div>
		<div>
			<div style="display:inline-block;width:320px"></div>
			<div style="display:inline-block;font-size:16px;">
			<form method="post" onsubmit="return check()">
				<div>
					<div class="joinname">아이디<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input id="c_id" name="c_id"></div>
					<div class="joinbutton1"><a onclick="id_select(c_id.value)">중복확인</a></div><span id="id_result"> </span>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">비밀번호<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="password" id="c_pass" name="c_pass"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">비밀번호 확인<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="password" id="passok" name="passok"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">여행사명<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input id="c_name" name="c_name"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">이메일<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="email" id="c_email" name="c_email"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">전화번호<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="tel" id="c_phone" name="c_phone"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">이용약관동의<font color="red" size="2">*</font></div>
					<div style="display:inline-block;">
						<label><input type="checkbox" id="agreement" name="agreement">개인정보 수집·이용 동의</label><a href="javascript:agreement();" style="font-size:10px;color:#777">[내용보기]</a>
					</div>
				</div>
				<div style="height:20px"> </div>
				<div style="text-align:center">
					<div><input type="submit" value="회원가입" class="joinbutton2"></div>
				</div>
				<div style="height:20px"> </div>
				</form>
			</div>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>