<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/join.css">
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:15px;">토리투어에 오신 것을 환영합니다.</div>
		<div style="text-align:center;font-size:15px;">토리투어 회원이 되시면 더욱 다양한 혜택을 누리실 수 있습니다. </div>
		<div style="height:30px"> </div>
		<div style="width:1100px">
			<div style="display:inline-block;width:430px"> </div>
			<div style="display:inline-block;font-size:16px;">
				<div>
					<a href="/member/memberjoin"><div class="join_select_button">일반 회원가입</div></a>
				</div>
				<div style="height:10px"> </div>
				<div>
					<a href="/company/companyjoin"><div class="join_select_button">여행사 회원가입</div></a>
				</div>
				<div style="height:20px"> </div>
			</div>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>