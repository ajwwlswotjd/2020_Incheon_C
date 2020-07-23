<script src="js/venueApp.js"></script>
<div id="reservation_popup" title="행사장 예약">
		<form action="#" onsubmit="return reservation_submit(this);">
			<input type="hidden" id="user_name" value="<?= $_SESSION['user']->name ?>">
			<input type="hidden" id="reservation_placement">
			<input type="hidden" id="placement_rest">
			<div class="input-group flex-nowrap">
				<div class="input-group-prepend">
					<span class="input-group-text">행사장 이름</span>
				</div>
				<input type="text" class="form-control" id="reservation_name" required>
			</div>
			<div class="input-group mt-3">
				<div class="custom-file">
					<input type="file" id="reservation_file" required accept="image/*" required>
				</div>
				<div class="input-group mt-3">
					<label for="reservation_since">시작일</label>
					<input onkeydown="return false;" type="text" class="form-control reservation_date" id="reservation_since" autocomplete="off" required>
				</div>
				<div class="input-group mt-3">
					<label for="reservation_until">종료일</label>
					<input onkeydown="return false;" type="text" class="form-control reservation_date" id="reservation_until" autocomplete="off" required>
				</div>
				<button type="submit" class="mt-3 btn btn-primary">예약</button>
			</div>
		</form>
	</div>
	<section style="cursor: pointer;" class="mb-5">
			<h1>행사장 목록</h1>
			<div class="row place-list">

                <!-- <div class="card col-4">
                    <div class="card-tooltip">
                        시설명 : 제 1 행사장<br>
                        점수 : 4.5
                    </div>
                    <img src="images/placement/01.jpg" class="card-img-top" alt="...">
                    <img src="images/placement/01.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">제 1 행사장</h5>
                        <p class="card-text">26,508㎡의 전시장으로 전문전시회, 대형회의, 각종 이벤트, 스포츠행사, 초대형기업행사 등이 가능합니다.</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">점수 : 4.5</li>
                        <li class="list-group-item">임대료 : 3500</li>
                        <li class="list-group-item">쉬는날 : 일요일</li>
                    </ul>
                </div> -->
            </div>
        </section>
        <script>
			let datas = <?= json_encode($data1,JSON_UNESCAPED_UNICODE); ?>
		</script>
		<script>
			let datas2 = <?= json_encode($data2,JSON_UNESCAPED_UNICODE); ?>
		</script>