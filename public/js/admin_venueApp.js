let placement;

const log = console.log;
window.addEventListener("load",()=>{

	$(".admin-header__downer > li").eq(0).addClass("--active");

	placement = JSON.parse(data.json);

	placement.places.forEach(place=>{
		let tr = temp(place);
		$(".list").append(tr);
	});

	$(document).on("click",".admin_delete",(e)=>{
		let id = e.target.dataset.id;
		let index = 0;
		placement.places.forEach((x,idx)=>{
			if(x.id == id) index = idx;
		});
		if(confirm("진짜로?")){
			placement.places.splice(index,1);
			let datas = {};
			datas.list = {};
			datas.list.places = placement.places;
			$.ajax({
				method:"POST",
				url:"/admin/venue/delete",
				data:datas,
				success : (e)=>{
					location.reload();
				}
			});
		}

	});


});

function temp(item){
	let tr = document.createElement("tr");
	tr.innerHTML = `
	<td class="list__thumbnail-container">

	${item.image.map(x=> `<img src="/images/placement/${x}" alt="" class="list__thumbnail"/>`).join('')}
	</td>
	<td>
	<div class="list__detail-row list__festival-name-row">
	<div class="detail__title">행사장 이름</div>
	<div class="detail__content">${item.name}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">행사장 소개</div>
	<div class="detail__content">${item.description}</div>
	</div>
	<div class="list__detail-row list__venue-name">
	<div class="detail__title">임대료</div>
	<div class="detail__content">&#x20A9;${item.price}</div>
	</div>
	</td>
	<td class="list__control">
	<button class="list__control-delete-button button admin_delete" data-id="${item.id}">삭제</button>
	</td>
	`;
	return tr;
}