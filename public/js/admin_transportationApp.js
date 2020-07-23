let transportation;
let reservation;

const log = console.log;

window.addEventListener("load",()=>{

	$(".admin-header__downer > li").eq(1).addClass("--active");

	transportation = JSON.parse(trans.json);
	reservation = JSON.parse(res.json);

	transportation.transportation.forEach(x=>{
		let tr = temp(x);
		$(".list > tbody").append(tr);
	});

	$(document).on("click",".admin_delete",(e)=>{
		let id = e.target.dataset.id;
		let filtered = reservation.transportation_reservation.filter(x=> {
			return x.transportation != id;
		});
		let index = 0;
		transportation.transportation.forEach((x,idx)=>{
			if(x.id == id) index = idx;
		});
		if(confirm("진짜로?")){
			transportation.transportation.splice(index,1);
			let datas = {};
			datas.list = {};
			datas.list.transportation = transportation.transportation;
			datas.list2 = {};
			datas.list2.transportation_reservation = filtered;
			$.ajax({
				method:"POST",
				url:"/admin/transportation/delete",
				data:datas,
				success : (e)=>{
					location.reload();
				}
			});
		}

	});

});

function temp(item)
{
	let tr = document.createElement("tr");
	tr.innerHTML = `
	<td>
		<div class="list__detail-row list__festival-name-row">
			<div class="detail__title">교통편 이름</div>
			<div class="detail__content">${item.name}</div>
		</div>
		<div class="list__detail-row list__venue-name">
			<div class="detail__title">교통편 소개</div>
			<div class="detail__content">${item.description}</div>
		</div>
		<div class="list__detail-row list__venue-name">
			<div class="detail__title">운임</div>
			<div class="detail__content">&#x20A9;${item.price}</div>
		</div>
	</td>
	<td class="list__control">
		<button class="list__control-delete-button button admin_delete" data-id=${item.id}>삭제</button>
	</td>
	`;
	return tr;
}