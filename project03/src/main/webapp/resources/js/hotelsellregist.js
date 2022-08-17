$(document).ready(function(){
	$('.h_class_h').click(function(){
		$('.sel_pension').css('display','none');
		$('.sel_hotel').css('display','block');
		$('.sel_hotel').css('display','inline-block');
		$('.select_hotel').css('display','block');
		$('.select_pension').css('display','none');
	});
	$('.h_class_p').click(function(){
		$('.sel_pension').css('display','block');
		$('.sel_pension').css('display','inline-block');
		$('.sel_hotel').css('display','none');
		$('.select_pension').css('display','block');
		$('.select_hotel').css('display','none');
	});
	$('#h_price').change(function(){
		var hp = $('#h_price').val();
		$('#h_point').val(Math.round(Number(hp*0.01)));
	});
});

function check(){
	
	if(h_price.value == ""){
		alert("1박 기준 가격을 입력해주세요");
		h_price.focus();
		return false;
	}
	
	document.submit();
}




                         