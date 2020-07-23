const log = console.log;
let transportation;
let reservation;

window.addEventListener("load",()=>{
	$(".admin-header__downer > li").eq(3).addClass("--active");
	transportation = JSON.parse(trans.json);
	reservation = JSON.parse(res.json);

	reservation.transportation_reservation.forEach(x=>{
		let trans = transportation.transportation.find(trans=>{
			return trans.id == x.transportation;
		});
		if(trans === undefined) return false;
		let tr = temp(x,trans);
		document.querySelector(".list > tbody").append(tr);
	});

});

function temp(item,trans){
	let tr = document.createElement("tr");
	tr.innerHTML = `
	<td>
	<div class="list__detail-row list__festival-name-row">
	<div class="detail__title">교통편 이름</div>
	<div class="detail__content">${trans.name}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">예약자 아이디</div>
	<div class="detail__content">${item.name}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">지불 운임</div>
	<div class="detail__content">&#x20A9;${item.price}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">탑승자 유형</div>
	<div class="detail__content">어른: ${item.member.adult}, 아이: ${item.member.kids}, 경로자: ${item.member.old}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">탑승일 / 예약일자</div>
	<div class="detail__content">${item.date} / ${item.date}</div>
	</div>
	</td>
	`;
	return tr;
}