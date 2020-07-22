let placement;
let reservation;

window.addEventListener("load",()=>{

	placement = JSON.parse(datas.json);
	reservation = JSON.parse(datas2.json);
	let json = placement;
	let json2 = reservation;

	let events = json2;
	json.places.forEach(place=>{ 
		let div = temp(place);
		document.querySelector(".place-list").appendChild(div); 
		let eventList = events.reservations.filter(x=> x.placement == place.id);
		$(div).on("click",()=>{
			$(reservation_placement).val($(div).data("id"));
			$("#reservation_popup").dialog({width : 300,height : 400});
			$(".reservation_date").datepicker("destroy"); // 이걸 안해주면 닫았다가 킬때 요일정보가 업데이튿 되지 않는다.
			$(".reservation_date").datepicker({
				dateFormat : 'yy-mm-dd',
				beforeShowDay : function(date){
					let day = date.getDay();
					let yoil = place.rest.find(x=> x == day) == undefined;
					let between = false;
					eventList.forEach(x=>{
						if(new Date(x.since).toMyString() <= new Date(date).toMyString() && new Date(x.until).toMyString() >= new Date(date).toMyString()) between = true;
					});
					return [yoil && !between];
				}
			});

					document.querySelectorAll(".reservation_date")[0].onchange = (e)=>{
						$(".reservation_date").datepicker("destroy");
						$(".reservation_date").eq(0).datepicker({
							dateFormat : 'yy-mm-dd',
							beforeShowDay : function(date){
								let day = date.getDay();
								let yoil = place.rest.find(x=> x == day) === undefined;
								let between = false;
								eventList.forEach(x=>{
									if(new Date(x.since).toMyString() <= new Date(date).toMyString() && new Date(x.until).toMyString() >= new Date(date).toMyString()) between = true;
								});
								return [yoil && !between];
							}
						});

						$(".reservation_date").eq(1).datepicker({
							dateFormat : 'yy-mm-dd',
							minDate : new Date(e.target.value),
							beforeShowDay : function(date){
								let day = date.getDay();
								let yoil = place.rest.find(x=> x == day) === undefined;
								let between = false;
								eventList.forEach(x=>{
									if(new Date(x.since).toMyString() <= new Date(date).toMyString() && new Date(x.until).toMyString() >= new Date(date).toMyString()) between = true;
								});
								return [yoil && !between];
							}
						});
					};

					document.querySelectorAll(".reservation_date")[1].onchange = (e)=>{
						$(".reservation_date").datepicker("destroy");
						$(".reservation_date").eq(0).datepicker({
							dateFormat : 'yy-mm-dd',
							maxDate : new Date(e.target.value),
							beforeShowDay : function(date){
								let day = date.getDay();
								let yoil = place.rest.find(x=> x == day) === undefined;
								let between = false;
								eventList.forEach(x=>{
									if(new Date(x.since).toMyString() <= new Date(date).toMyString() && new Date(x.until).toMyString() >= new Date(date).toMyString()) between = true;
								});
								return [yoil && !between];
							}
						});

						$(".reservation_date").eq(1).datepicker({
							dateFormat : 'yy-mm-dd',
							beforeShowDay : function(date){
								let day = date.getDay();
								let yoil = place.rest.find(x=> x == day) === undefined;
								let between = false;
								eventList.forEach(x=>{
									if(new Date(x.since).toMyString() <= new Date(date).toMyString() && new Date(x.until).toMyString() >= new Date(date).toMyString()) between = true;
								});
								return [yoil && !between];
							}
						});
					};
				});
	});

	Date.prototype.toMyString = function(){
		return this.getFullYear()+(this.getMonth()+1+"").padStart(2,"0")+(this.getDate()+"").padStart(2,"0");
	}


	function temp(item){ 
		let weekArr = ["일", "월", "화", "수", "목", "금", "토"]; 
		let div = document.createElement("div"); 
		div.classList.add("card"); 
		div.classList.add("col-4"); 
		div.dataset.id = item.id;
		div.innerHTML = `
		${item.image.map(x=> `<img src="images/placement/${x}" alt="" class="card-img-top"/>`).join('')}
		<div class="card-body">
		<h5 class="card-title">${item.name}</h5>
		<p class="card-text">
		${item.description}
		</p>
		</div>
		<ul class="list-group list-group-flush">
		<li class="list-group-item">점수 : ${item.score}</li>
		<li class="list-group-item">임대료 : ${item.price}</li>
		<li class="list-group-item">쉬는날 : ${item.rest.map(x=> weekArr[x]+"요일").join(',')}</li>
		</ul>`;
		return div; 
	}
});


function reservation_submit(){

	if($(reservation_file).val() == ""){
		alert("이미지가 엄슴");
		return false;
	}
	let placeId = $(reservation_placement).val()*1;
	let flag = 0;
	let filtered = reservation.reservations.filter(a=> a.placement == placeId);
	for(let i = 0; i < filtered.length; i++){
		let x = filtered[i];
		let xDate = new Date(x.since);
		let sinceDate = new Date($(reservation_since).val());
		let untilDate = new Date($(reservation_until).val());
		if(sinceDate <= xDate && untilDate >= xDate){
			// alert("다른 행사 날짜랑 겹치는데요");
			flag = 1;
			break;
		}
		if(sinceDate > untilDate){
			// alert("시작날짜랑 종료날짜랑 말이 안맞는데용? ㅇㅅㅇ");
			flag = 2;
			break;
		}
	}
	if(flag == 1){
		alert("다른 행사 날짜랑 겹치는데요");
		return false;
	}else if(flag == 2){
		alert("시작날짜랑 종료날짜랑 말이 안맞는데용? ㅇㅅㅇ");
		return false;
	}
	let id = reservation.reservations.length+1;
	let data = {
		"id": id,
		"placement": placeId,
		"since": $(reservation_since).val(),
		"until": $(reservation_until).val(),
		"name": $(reservation_name).val(),
		"createdAt": $(reservation_since).val(),
		"user": {
			"name": $(user_name).val()
		}
	};
	reservation.reservations.push(data);
	let datas = {};
	datas.list = {};
	datas.list.reservations = reservation.reservations;
	$.ajax({
		method:"POST",
		url:"/reservation/insert",
		data:datas,
		success : (e)=>{
			$(".ui-icon-closethick")[0].click();
		}
	})
	return false;
}