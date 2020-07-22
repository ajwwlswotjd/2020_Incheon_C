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
		let eventList = events.reservations.filter(x=> x.placement === place.id);
		document.querySelector(".place-list").appendChild(div); 
		div.addEventListener("click",()=>{

			$("#reservation_popup").dialog({width : 300,height : 400});
					$(".reservation_date").datepicker("destroy"); // 이걸 안해주면 닫았다가 킬때 요일정보가 업데이튿 되지 않는다.
					$(".reservation_date").datepicker({
						dateFormat : 'yy-mm-dd',
						beforeShowDay : function(date){
							let day = date.getDay();
							let yoil = place.rest.find(x=> x == day) == undefined;
							let between = false;
							eventList.forEach(x=>{
								if(new Date(x.since) <= new Date(date) && new Date(x.until) >= new Date(date)) between = true;
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
									if(new Date(x.since) <= new Date(date) && new Date(x.until) >= new Date(date)) between = true;
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
									if(new Date(x.since) <= new Date(date) && new Date(x.until) >= new Date(date)) between = true;
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
									if(new Date(x.since) <= new Date(date) && new Date(x.until) >= new Date(date)) between = true;
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
									if(new Date(x.since) <= new Date(date) && new Date(x.until) >= new Date(date)) between = true;
								});
								return [yoil && !between];
							}
						});
					};
				});
	});


	function temp(item){ 
		let weekArr = ["일", "월", "화", "수", "목", "금", "토"]; 
		let div = document.createElement("div"); 
		div.classList.add("card"); 
		div.classList.add("col-4"); 
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
	
	reservation.reservations.forEach(x=>{
		let xDate = new Date(x.since);
		let sinceDate = new Date($(reservation_since).val());
		let untilDate = new Date($(reservation_until).val());

		if(sinceDate <= xDate && untilDate >= xDate){
			alert("다른 행사 날짜랑 겹치는데요");
			return false;
		}

		if(sinceDate > untilDate){
			alert("시작날짜랑 종료날짜랑 말이 안맞는데용? ㅇㅅㅇ");
			return false;
		}
	});
	
	let data = {
            "id": 1,
            "placement": $(reservation_placement).val(),
            "since": $(reservation_since).val(),
            "until": $(reservation_until).val(),
            "name": $(reservation_name).val(),
            "createdAt": $(reservation_since).val(),
            "user": {
                "name": $(user_name).val()
            }
        };

	return false;
}