<?php 

namespace Gondr\Controller;
use Gondr\DB;

class MainController extends MasterController {

	public function index()
	{
		$this->render("main");
	}

	public function venue()
	{
		$this->render("venue");
	}

	public function transportation()
	{
		$sql = "SELECT * FROM `transportation`";
		$posts = DB::fetch($sql,[]);
		$sql = "SELECT * FROM `trans_res`";
		$posts2 = DB::fetch($sql,[]);
		$this->render("transportation",["posts"=>$posts,"posts2"=>$posts2]);
	}

	public function trans_insert()
	{	
		var_dump($_POST);
		extract($_POST); 
		$sql = "UPDATE `trans_res` SET `json`= ? WHERE `idx` = 0";
		DB::query($sql,[json_encode($list,JSON_UNESCAPED_UNICODE)]);
	}
}
