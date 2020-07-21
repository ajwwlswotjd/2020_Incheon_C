const log = console.log;
window.addEventListener("load",()=>{
	$('.nav-login').on("click",()=>{
		$("#login").dialog();
	});
	$('.nav-join').on("click",()=>{
		$("#join").dialog({
			width : 400
		});
	});
	$("#join_phone").on("input",(e)=>{
		let value = e.target.value;
		value = value.replace(/[^0-9]/g,"").replace(/(^[0-9]{3}|^[0-9]{2})([0-9]{4}|[0-9]{3})([0-9]{4})/,"$1-$2-$3");
		e.target.value = value;
	});
	$('.join_condition').on('input',(e)=>{
		let txt = [];
		if(!(/^[가-힣]{2,4}$/.test(join_name.value))) txt.push("이름은 2~4 글자의 한글");
		if(!(/^(?=.*[^a-zA-Z0-9])(?=.*).{6,20}$/.test(join_pwd.value))) txt.push("비밀번호는 특수문자 포함한 6~20자");
		document.querySelector(".join_txt").innerHTML = txt.length != 0 ? txt.map(x=> x).join(', ')+"이여야 합니다." : "";
	});

	$("#join_dup_btn").on("click",()=>{
		let id = $("#join_id").val();
		let data = {"id":id};
		$.ajax({
			data:data,
			method:"POST",
			url: "/user/duplicate",
			success: (e)=>{
				let result = JSON.parse(e).result;
				$(".join_id_duplicate").html(result ? "중복되는 아이디 입니다." : "사용 가능한 아이디 입니다.");
			}
		});
	});

	$("#join_cap_reset").on('click',()=>{
		$("#join_cap_box").html("");
		let str = '0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
		let code = "";
		for (let i = 0; i < 6; i++) code += str[Math.floor(Math.random()*str.length)];
		$("#captcha_answer").val(code);
		$("#join_cap_box").append(`<img src="/captcha.php?code=${code}" alt="">`);
	});
	$("#join_cap_reset")[0].click();
		
	let now = 0;
	let isSliding = false;
	$(".controller-btn").on('click',(e)=>{
		if(isSliding) return;
		isSliding = true;
		let num = e.target.dataset.num;
		now += num*1;
		if(now < 0) now = 2;
		if(now > 2) now = 0;
		$(".active").removeClass("active");
		$(".visual-btn-box .visual-ctn-btn").eq(now).addClass("active");
		$(".slider-pannel").animate({left:now*-100+"%"},800,()=>{
			isSliding = false;
		});
	});

	$(".visual-btn-box .visual-ctn-btn").on("click",(e)=>{
		if(isSliding) return;
		isSliding = true;
		now = e.target.dataset.idx*1;
		$(".active").removeClass("active");
		$(".visual-btn-box .visual-ctn-btn").eq(now).addClass("active");
		$(".slider-pannel").animate({left:now*-100+"%"},800,()=>{
			isSliding = false;
		});
	});
});


function login_submit(e){
	if(login_id.value == "" || login_pwd.value == ""){
		alert('입력값이 입력되지 않았습니다.');
		return false;
	}
	let data = {
		"id":login_id.value,
		"pwd":login_pwd.value
	};
	$.ajax({
		data:data,
		url:"/user/login",
		method:"POST",
		success : (e)=>{
			let json = JSON.parse(e);
			let result = json.result;
			if(result == 0){ // 아이디도 없는경우
				alert("아이디도 업슴");
				return false;
			}else if(result == 1){
				alert("아이디는 있는데 비밀번호가 잘못대씀");
				return false;
			}else if(result == 2) {
				location.reload();
			}
		}
	});
	return false;
}

function join_submit(e){
	if(captcha_answer.value != join_captcha.value){
		alert("캡챠가 다름");
		return false;
	}
	let id = $(join_id).val();
	let pwd = $(join_pwd).val();
	let name = $(join_name).val();
	let phone = $(join_phone).val();
	let data = {
		"id":id,
		"pwd":pwd,
		"name":name,
		"phone":phone
	};
	$.ajax({
		url:"/user/join",
		method:"POST",
		data:data,
		success : (e)=>{
			let json = JSON.parse(e);
			if(!json.result){
				alert("아이디 중복검사 진행하셈");
				return false;
			}else {
				location.reload();
			}
		}
	})
	return false;
}