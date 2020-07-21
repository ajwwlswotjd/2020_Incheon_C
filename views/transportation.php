<script src="js/transportationApp.js"></script>
<div id="toast" class="toast" style="position: fixed; left: 0; bottom: 0;">
		<div class="toast-header">
			<strong class="mr-auto">토스트</strong>
			<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
				<span aria-hidden="true" id="toast-close">&times;</span>
			</button>
		</div>
		<div class="toast-body" id="toast-body">
			asf
		</div>
	</div>
	<div id="reserve" title="예약 하기">
		<form action="#" onsubmit="return reserve_submit(this)">
			<input type="hidden" id="res_id">
			<div class="input-group mt-2">
				<input type="text" class="form-control" id="res_transport" readonly value="">
			</div>
			<div class="input-group mt-3">
				<input type="date" class="form-control" id="res_date" readonly>
			</div>
			<div class="input-group mt-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="res_select">시간</label>
				</div>
				<select class="custom-select" id="res_select">
					
				</select>
			</div>
			<input type="hidden" id="reserve_left">
			<input type="hidden" id="reserve_price">
			<div class="input-group mt-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="kids">아이</label>
				</div>
				<input type="text" onkeydown="return false;" placeholder="아이" class="reserve_spinner form-control" id="kids" value="0">
			</div>
			<div class="input-group mt-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="adult">어른</label>
				</div>
				<input type="text" onkeydown="return false;" placeholder="어른" class="reserve_spinner form-control" id="adult" value="0">
			</div>
			<div class="input-group mt-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="old">노약자</label>
				</div>
				<input type="text" onkeydown="return false;" placeholder="노약자" class="reserve_spinner form-control" id="old" value="0">
			</div>
			<div class="input-group mt-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="res_total">합계</label>
				</div>
				<input type="hidden" id="res_name" value="<?= $_SESSION['user']->name ?>">
				<input type="hidden" id="res_time">
				<input type="text" class="form-control" id="res_total" value="0" readonly>
			</div>
			<button type="submit" class="btn btn-primary mt-2">결제하기</button>
		</form>
	</div>

	<section class="mb-5">
			<h1>교통편 예약</h1>
			<div class="input-group mt-3">
				<input type="date" class="form-control" onkeydown="return false;" id="transportation_date">
			</div>
			<div class="input-group mb-3 mt-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="transportation_select">행사 선택</label>
				</div>
				<select class="custom-select" id="transportation-select">
					
				</select>
			</div>
			<div class="transportation-list row">
				
			</div>
		</section>
		<script>
			let datas2 = <?= json_encode($posts2,JSON_UNESCAPED_UNICODE); ?>
		</script>
		<script>
			let datas = <?= json_encode($posts,JSON_UNESCAPED_UNICODE); ?>
		</script>