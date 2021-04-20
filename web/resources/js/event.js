window.onload = function() {

/*화면에 렌더링 된 태그들이 존재하지 않는 경우 에러 발생 가능성이 있어서 if문으로 태그가 존재하는지부터
확인하고 이벤트를 연결한다.*/

if(document.getElementById("regist")){
   const $regist =  document.getElementById("regist");
   $regist.onclick = function() {
      location.href = "/creation/member/regist"; /* 클라이언트는 경로를 모르기 떄문에 /jsp를 적어주는게 좋다.*/
   }
}

	if(document.getElementById("logout")){
	const $logout = document.getElementById("logout");
	$logout.onclick = function() {
		location.href= "/creation/member/logout";
	 }
	}
	
	if(document.getElementById("update")){
	const $update = document.getElementById("update");
	$update.onclick = function() {
		location.href= "/creation/member/update";
	 }
	}
	
	if(document.getElementById("delete")){
	const $delete = document.getElementById("delete");
	$delete.onclick = function() {
		location.href= "/creation/ht/NTC/notice/delete";
	 }
	}
	
	if(document.getElementById("update")){
	const $update = document.getElementById("update");
	$update.onclick = function() {
		location.href= "/creation/ht/NTC/notice/update";
	 }
	}
	if(document.getElementById("writeNotice")){
		const $writeNotice = document.getElementById("writeNotice");
		$writeNotice.onclick = function(){
			location.href = "/creation/ht/NTC/notice/insert";
		}
	}
	if(document.getElementById("cancleNotice")){
		const $cancleNotice = document.getElementById("cancleNotice");
		$cancleNotice.onclick = function(){
			location.href = "/jsp/notice/list";
		}
	}
	
	
	
	
	
	if(document.getElementById("delete")){
	const $delete = document.getElementById("delete");
	$delete.onclick = function() {
		location.href= "/creation/ht/FAQ/delete";
	 }
	}
	
	if(document.getElementById("update")){
	const $update = document.getElementById("update");
	$update.onclick = function() {
		location.href= "/creation/ht/FAQ/update";
	 }
	}
	if(document.getElementById("writeFAQ")){
		const $writeFAQ = document.getElementById("writeFAQ");
		$writeFAQ.onclick = function(){
			location.href = "/creation/ht/FAQ/insert";
		}
	}
	if(document.getElementById("FAQsearch")){
		const $FAQsearch = document.getElementById("FAQsearch");
		$FAQsearch.onclick = function(){
			location.href = "/creation//ht/FAQ/search";
		}
	}
	
	
	
	
	
	
	
	
	if(document.getElementById("delete")){
	const $delete = document.getElementById("delete");
	$delete.onclick = function() {
		location.href= "/creation/ht/QNA/delete";
	 }
	}
	
	if(document.getElementById("update")){
	const $update = document.getElementById("update");
	$update.onclick = function() {
		location.href= "/creation/ht/QNA/update";
	 }
	}
	if(document.getElementById("writeQNA")){
		const $writeQNA = document.getElementById("writeQNA");
		$writeQNA.onclick = function(){
			location.href = "/creation/ht/QNA/insert";
		}
	}
	if(document.getElementById("QNAsearch")){
		const $QNAsearch = document.getElementById("QNAsearch");
		$QNAsearch.onclick = function(){
			location.href = "/creation/ht/QNA/search";
		}
	}
	
	
	if(document.getElementById("writeThumbnail")){
		const $writeThumbnail = document.getElementById("writeThumbnail");
		$writeThumbnail.onclick = function(){
			location.href = "/creation/ht/AGL/thumbnail/list";
		}
	}
	if(document.getElementById("eventOut")){
		const $eventOut = document.getElementById("eventOut");
		$eventOut.onclick = function(){
			location.href = "/creation//ht/home";
		}
	}
	

}