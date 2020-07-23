let datas = [];
let placement;
let reservation;

window.addEventListener("load",()=>{

	placement = JSON.parse(data1.json);
	reservation = JSON.parse(data2.json);

	let json = reservation;
	let json2 = placement;

	datas = json.reservations;

	let asd = [];

	let date = new Date();
	let txt = date.getFullYear()+"-"+(date.getMonth()+1+"").padStart(2,"0");
	let qqq = datas.filter(x=> (x.since.split("-")[0]+"-"+x.since.split("-")[1].padStart(2,"0")).indexOf(txt) > -1);

	qqq.forEach(data => {
		asd.push({ 'idx':data.id, 'date': Math.abs( new Date(data.since) - new Date() ) });
	});

	asd.sort((a,b) => {
		return b.date - a.date;
	});

	asd = asd.splice(0, 3).map(x => x.idx);
	let result = asd.map(x=> datas.find(z=> z.id == x));
	result.forEach(x=>{
		let placement = json2.places.find(v=> v.id == x.placement);
		if(placement === undefined) return false;
		let div = temp(x,placement);

		let tooltip = div.querySelector(".card-tooltip");
		div.addEventListener("mouseover",(e)=>{
			tooltip.style.display = "block";
		});
		div.addEventListener("mousemove",(e)=>{
			tooltip.style.left = e.clientX+1 + "px";
			tooltip.style.top = e.clientY+1 + "px";
		});

		div.addEventListener("mouseout",()=>{
			tooltip.style.display = "none";
		});

		div.addEventListener("click",(e)=>{
			document.querySelector(".popup-imgs").innerHTML = placement.image.map(x=> `<img src="images/placement/${x}" alt="" class="card-img-top"/>`).join('');
			document.querySelector(".popup-place-title > span").innerHTML = placement.name;
			document.querySelector(".popup-place-score > span").innerHTML = placement.score;
			document.querySelector(".popup-event-name > span").innerHTML = x.name;
			document.querySelector(".popup-event-since > span").innerHTML = x.since;
			document.querySelector(".popup-event-until > span").innerHTML = x.until;
			$("#event_popup").dialog({
				buttons: {
					"인쇄": function(){
						let preHTML = document.body.innerHTML;
						let dom = document.querySelector("#event_popup");
						document.body.innerHTML = dom.innerHTML;
						window.print();
						location.reload();
					}
				}
			});
		});

		document.querySelector(".content-list").appendChild(div);
	});
});

function temp(event,placement){
	let div = document.createElement("div");
	div.classList.add("card");
	div.classList.add("mb-3");
	div.innerHTML =`
	<div class="card-tooltip">
	시설명 : ${placement.name}<br>
	점수 : ${placement.score}
	</div>
	${placement.image.map(x=> `<img src="images/placement/${x}" alt="" class="card-img-top"/>`).join('')}
	<div class="card-body">
	<h5 class="card-title">${event.name}</h5>
	<p class="card-text">대여 시작일 : ${event.since}</p>
	<p class="card-text">대여 종료일 : ${event.until}</p>
	<p class="card-text">
	<small class="text-muted">예약일자 : ${event.since}</small>
	</p>
	</div>
	`;
	return div;
}