<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="/css/join.css">
<script type="text/javascript" src="/js/hotelregist.js" ></script>
<div>
	<div style="display:inline-block;width:400px"> </div>
	<div style="display:inline-block;width:1100px">
		<div style="height:30px"> </div>
		<div style="text-align:center;font-size:25px;font-weight:bold">숙소 사진 등록</div>
		<div style="height:30px"> </div>
		<div>
			<div style="display:inline-block;width:320px"></div>
			<div style="display:inline-block;font-size:16px;">
			<form method="post" onsubmit="return check()" enctype="multipart/form-data">
			<input id="h_uid" name="h_uid" value="${h_uid}">
				<div>
					<div class="joinname">숙소명</div>
					<div style="display:inline-block;"><input id="h_name" name="h_name" value="${h_name}" readonly></div>
				</div>
				<div style="height:10px"> </div>
				<div>
					<div class="joinname">숙소 사진</div>
					<div style="display:inline-block;"><input multiple="multiple" type="file" id="file" name="file"></div>
				</div>
				<div style="height:20px"> </div>
				<div style="text-align:center">
					<div><input type="submit" value="숙소등록" class="joinbutton2"></div>
				</div>
				<div style="height:20px"> </div>
				</form>
			</div>
		</div>
	</div>
	<div style="display:inline-block;width:400px"> </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>