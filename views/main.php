<script src="js/indexApp.js"></script>
<div id="event_popup" class="" title="행사">
		<div class="card">
			<div class="popup-imgs">
				<!-- <img src="images/placement/01.jpg" class="card-img-top" alt="...">
				<img src="images/placement/01.jpg" class="card-img-top" alt="..."> -->
			</div>
			<div class="card-body">
				<p class="card-title popup-place-title">
					시설명 : <span>제 1 행사장</span>
				</p>
				<p class="card-text popup-place-score">
					점수 : <span>2.5</span>
				</p>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item popup-event-name">
					행사명 : <span>자몽이 생일파티</span>
				</li>
				<li class="list-group-item popup-event-since">
					행사 시작일 : <span>2020-10-23</span>
				</li>
				<li class="list-group-item popup-event-until">
					행사 종료일 : <span>2303-10-32</span>
				</li>
			</ul>
		</div>
	</div>
	<section id="visual">
			<div class="visual-btn-box">
				<button data-idx="0" class="visual-ctn-btn active">1</button>
				<button data-idx="1" class="visual-ctn-btn">2</button>
				<button data-idx="2" class="visual-ctn-btn">3</button>
			</div>
			<button data-num="-1" id="before" class="controller-btn">이전</button>
			<button data-num="1" id="next" class="controller-btn">다음</button>
			<div class="slider-pannel">
				<img src="images/01.jpg" alt="">
				<img src="images/02.jpg" alt="">
				<img src="images/03.jpg" alt="">
			</div>
		</section>
		<section id="introduce">
			<h1>소개</h1>
			지난 2001년 7월 전라북도에는 대한민국 최고의 관광명소인 전북축제행사장을 신축하고 해마다 행사개최 기록을 갱신해가며 매머드급 축제전시회와 축제행사는 물론 중소 규모 회의와 기업행사 등 이벤트에 이르기까지 다양한 규모와 성격의 축제 행사를 성공적으로 개최하고 있으며, 이를 기반으로 ‘아시아 최고의 축제·컨벤션 허브’로 자리매김해 나가고 있습니다.

			전북축제행사장은 복층의 최첨단 전시장으로서 3개의 홀로 분할 가능한 총 26,508㎡의 제1행사장과 2012년 5월 완공한 19,872㎡의 제2행사장으로 이루어져 총 실내전시면적이 46,380㎡ 규모로 20,000㎡ 이상의 대형축제행사를 동시에 2건 이상 개최할 수 있습니다.

			또한, 최대 5,340명을 수용할 수 있는 컨벤션홀을 비롯하여 50개의 회의실과 2012년 완공한 4002석 규모의 오디토리움을 활용하여 총회, 세미나, 기업회의, 공연 등 다양한 유형의 행사를 성공적으로 개최할 수 있는 시설을 완비하고 있습니다. 현재까지, 전북축제행사장은 21개국 정상이 참가한 2005 세계축제 정상회의, 130개국에서 참가한 OECD 세계축제포럼, 제2전시장과 오디토리움 완공과 더불어 성공적으로 활용개최한 2012 라이온스전북축제대회 등 매머드급 축제행사들을 성공적으로 개최함으로써 명실상부한 축제컨벤션 허브로 성장해 나가고 있습니다.

			이외에도, 지난 10여년간의 축제행사 개최 경험과 노하우를 바탕으로 축제기획 분야에서 탁월한 전문성을 인정받고 있으며, 이를 통하여 민간기업과 협력하여 동반성장해 나갈 수 있는 기회를 적극적으로 만들어나가고자 노력해 나가고 있습니다.
		</section>
		<section id="content">
			<h1>컨텐츠</h1>
			<div class="content-list">
				
			</div>
		</section>

		<script>
			let data1 = <?= json_encode($data1,JSON_UNESCAPED_UNICODE); ?>
		</script>
		<script>
			let data2 = <?= json_encode($data2,JSON_UNESCAPED_UNICODE); ?>
		</script>