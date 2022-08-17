<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<script type="text/javascript" src="/js/companyjoin.js" ></script>
<link rel="stylesheet" href="/css/join.css">
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">로그인</div>
		<div style="text-align:center;font-size:15px;">토리투어에 오신 것을 환영합니다.</div>
		<div style="text-align:center;font-size:15px;">토리투어의 파트너가 되어 다양한 혜택을 누려보세요. </div>
		<div style="height:30px"> </div>
		<div style="width:1100px">
			<div style="display:inline-block;width:395px"> </div>
			<div style="display:inline-block;font-size:16px;">
			<form method="post">
				<div>
					<div class="loginname">아이디</div>
					<div style="display:inline-block;"><input id="c_id" name="c_id"></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="loginname">비밀번호</div>
					<div style="display:inline-block;"><input type="password" id="c_pass" name="c_pass"></div>
				</div>
				<div style="height:20px"> </div>
				<div style="text-align:center">
					<div><input type="submit" value="로그인" class="joinbutton2"></div>
				</div>
				<div style="height:20px"> </div>
			</form>
			</div>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>