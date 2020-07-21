let transportations;
let reservations;
window.addEventListener("load",()=>{

	transportations = JSON.parse(datas.json);
	reservations = JSON.parse(datas2.json);

	$.getJSON('data/reservation.json',(events)=>{
		$("#toast-close").on("click",e=> $("#toast").fadeOut());

		$("#res_select").on("change",function(e){
			$("#reserve_left").val(e.target.value.split("@")[0]);

			$("#res_time").val(e.target.value.split("@")[1]);
		});

		$("#transportation_date").on("input",(e)=>{
			let value = e.target.value;
			$("#res_date").val(value);
			let arr = events.reservations.filter(x=>{
				return new Date(x.until).toMyString() >= new Date(value).toMyString() && new Date(x.since).toMyString() <= new Date(value).toMyString();
			});
			$("#transportation-select").html(`<option value="null" selected>행사 선택</option>`);
			arr.forEach((x)=>{
				$("#transportation-select").append(`<option value="${x.id}" >${x.name}</option>`);
			});
		});

		$('#transportation-select').on("change",(e)=>{
			let value = e.target.value;
			let event = events.reservations.find(x=>{return x.id == value});
			$(".transportation-list").html("");
			if(event === undefined) return;
			let val = $("#transportation_date").val();
					let yoil = new Date(val).getDay(); // 0 1 2 3 4 5 6
					let filtered = transportations.transportation.filter(f=>{
						return f.rest.indexOf(yoil) == -1;
					});
					filtered.forEach(item=>{ // item => 각 교통정보
						let div = temp(item);
						$(div).on("click",()=>{
							$("#res_select").html("");
							$("#res_id").val(item.id);
							$("#res_transport").val(item.name);
							$("#reserve_price").val(item.price);
							let start = parseInt(item.cycle[0].split(":")[0])*60 + parseInt(item.cycle[0].split(":")[1]);
							let end = parseInt(item.cycle[1].split(":")[0])*60 + parseInt(item.cycle[1].split(":")[1]);

							for(let i = start; i <= end; i+=item.interval*1){
								let string = (Math.floor(i/60)+"").padStart(2,"0")+":"+(i%60+"").padStart(2,"0");
								let string2 = string;
								let date = $("#transportation_date").val();

								let total = 0;
								log(reservations);
								let qwe = JSON.parse(reservations);
								let ft = qwe.filter(x=>{
									return new Date(x.date).toMyString() == new Date(date).toMyString() && string == x.time && x.transportation == item.id;
								}).forEach(z=>{
									total += z.member.old;
									total += z.member.adult;
									total += z.member.kids;
								});
								let left = item.limit - total;
								if(left == 0) continue;
								let option = document.createElement("option");
								string += " 남은자리 : "+left;
								option.innerHTML = string;
								option.setAttribute("value",`${left}@${string2}`);
								if(i == start){
									option.setAttribute("selected","selected");
									$("#reserve_left").val(left);
								}
								$("#res_select").append(option);
							}
							// $(".reserve_spinner").spinner("destroy");
							$(".reserve_spinner").spinner({
								min : 0,
								step: 1,
								start:0,
								spin:function(e,ui){
									$(e.target).val(ui.value);
									let price = $("#reserve_price").val();
									let adult = $('#adult').val()*price;
									let kids = $('#kids').val()*price*0.6;
									let old = $('#old').val()*price;
									old*= price <= 20000 ? 0 : price <= 100000 && price > 20000 ? 0.5 : 0.8;
									let total = adult+kids+old;
									$("#res_total").val(total);
								}
							});
							$("#reserve").dialog({width:320});
						});
						$(".transportation-list").append(div);
					});

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
		// div.classList.add("card-onrun");
		div.innerHTML = `
		<div class="card-body">
		<h5 class="card-title">${item.name}</h5>
		<p class="card-text">
		${item.description}
		</p>
		</div>
		<ul class="list-group list-group-flush">
		<li class="list-group-item">간격 : ${item.interval}분</li>
		<li class="list-group-item">
		운행 시간대 : ${item.cycle[0]} ~ ${item.cycle[1]}
		</li>
		<li class="list-group-item">쉬는날 : ${item.rest.map(x=> weekArr[x]+"요일").join(',')}</li>
		<li class="list-group-item">운임 : ${item.price}</li>
		<li class="list-group-item">좌석 수 : ${item.limit}</li>
		</ul>`
		return div; 
	}
});
function reserve_submit(e){
	let total = 0;
	document.querySelectorAll(".reserve_spinner").forEach(x=> total += x.value*1);
	let over = $("#reserve_left").val() < total;
	$("#toast-body").html(over ? "인원이 너무 많습니다." : "결제가 진행되었습니다.");
	$('#toast').fadeIn();
	if(!over){
		let trans_id = $("#res_id").val()*1;
		log(reservations);
		let qwer = JSON.parse(reservations);
		let id = ((qwer[qwer.length-1]).id)+1;
		let data = {
			"id":id,
			"name": $("#res_name").val(),
			"transportation": trans_id,
			"date": $(res_date).val(),
			"time": $(res_time).val(),
			"member": {
                "old": $(old).val(),
                "adult": $(adult).val(),
                "kids":$(kids).val()
            },
            "price": $(res_total).val()
		}
		let qwe = JSON.parse(reservations);
		qwe.push(data);
		let str = JSON.stringify(qwe,null,0);
		let asdf = {};
		asdf.list = str;
		// asdf.list.transportation_reservation = str;
		$.ajax({
			method:"POST",
			url:"/trans/resert/insert",
			data:asdf,
			success : (e)=>{
				log(e);
			}
		})
	}
	return false;
}
