<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/join.css">
<script type="text/javascript" src="/js/join.js" ></script>
<script>
function agreement() {
	window.open("agreement", "agreement", "width=480, height=480");
}

function id_select(id){
	$.ajax({
		url: "idok", //전송받을 페이지 경로
		type: "post", //데이터 읽어오는 방식
		dataType: "text", //데이터 방식
		data: "id="+$("#id").val(), //데이터 전달
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
		<div style="text-align:center;font-size:25px;font-weight:bold">회원가입</div>
		<div style="text-align:center;font-size:15px;">토리투어에 오신 것을 환영합니다.</div>
		<div style="text-align:center;font-size:15px;">토리투어 회원이 되시면 더욱 다양한 혜택을 누리실 수 있습니다. </div>
		<div style="height:30px"> </div>
		<div>
			<div style="display:inline-block;width:320px"></div>
			<div style="display:inline-block;font-size:16px;">
			<form method="post" onsubmit="return check()">
				<div>
					<div class="joinname">아이디<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input id="id" name="id"></div>
					<div class="joinbutton1"><a onclick="id_select(id.value)">중복확인</a></div><span id="id_result"> </span>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">비밀번호<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="password" id="pass" name="pass"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">비밀번호 확인<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="password" id="passok" name="passok"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">이름<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input id="membername" name="membername"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">생년월일<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="date" id="birth" name="birth" style="width:173px"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">성별<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="radio" id="gender" name="gender" value="M" checked>남<input type="radio" id="gender" name="gender" value="F">여</div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">이메일<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="email" id="email" name="email"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">전화번호<font color="red" size="2">*</font></div>
					<div style="display:inline-block;"><input type="tel" id="phone" name="phone"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">여권번호<font color="gray" size="2">(선택사항)</font></div>
					<div style="display:inline-block;"><input id="passport" name="passport"></div>
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