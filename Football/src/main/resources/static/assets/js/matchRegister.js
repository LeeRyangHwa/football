/**
 * 
 */


function matchDB(matchData) {
	var suc
	console.log(matchData);
	$.ajax({
		type:"POST",
		url:"/matchingRegisterDB",
		contentType:"application/text;charset=utf-8",
		data:matchData,
		dataType:"text",
		success:function(data){
			console.log(data);
			if (data==7){
				alert("등록되었습니다."); 
			}else{
				alert("모두 입력해주세요."); 
			}
		}
	})
	return suc;
}
const inputbtn = document.querySelector('.register');
//var matchData = new Array();
var suc;
inputbtn.addEventListener('click', function(){
	
	input_title = document.querySelector('#match_title_set').value;
	input_area = document.querySelector('#matcharea_set').value;
	var matchdatetime = document.getElementById("matchdatetime").value;
	matchground = document.querySelector('#matchground_set').value;
	ground_pay = document.querySelector('#ground_pay').value;
	match_status = document.querySelector('#match_status_set').value;
	match_detail = document.querySelector('#match_detail').value;

	
	//matchData = [input_title, input_area, matchdatetime, matchground,ground_pay,match_status,match_detail];
	matchData = input_title+","+input_area+","+ matchdatetime+","+matchground+","+ground_pay+","+match_status+","+match_detail;
	
	suc = matchDB(matchData);
	

	//window.close();
	
});

