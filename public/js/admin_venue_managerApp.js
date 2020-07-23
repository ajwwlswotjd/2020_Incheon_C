const log = console.log;

let reservation;
let placement;

window.addEventListener("load",()=>{
	$(".admin-header__downer > li").eq(2).addClass("--active");

	reservation = JSON.parse(res.json);
	placement = JSON.parse(places.json);

	reservation.reservations.forEach(x=>{
		let place = placement.places.find(place=>{
			return place.id == x.placement;
		});
		if(place === undefined) return false;
		let tr = temp(x,place);
		document.querySelector(".list > tbody").append(tr);
	});
});

function temp(item,place)
{
	let tr = document.createElement("tr");
	tr.innerHTML = `
	<td class="list__thumbnail-container">
	${place.image.map(x=> `<img src="/images/placement/${x}" alt="" class="list__thumbnail"/>`).join('')}
	</td>
	<td>
	<div class="list__detail-row list__festival-name-row">
	<div class="detail__title">개최 행사 이름</div>
	<div class="detail__content">${item.name}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">임대한 행사장 이름</div>
	<div class="detail__content">${place.name}</div>
	</div>
	<div class="list__detail-row list__festival-date">
	<div class="detail__title">개최 기간</div>
	<div class="detail__content">${item.since} ~ ${item.until}</div>
	</div>
	</td>
	<td class="list__user">${item.user.name} (${item.user.name})</td>
	<td class="list__created-at">2019.07.30</td>
	`;
	return tr;
}