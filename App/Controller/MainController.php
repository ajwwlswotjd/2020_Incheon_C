<?php 

namespace Gondr\Controller;
use Gondr\DB;

class MainController extends MasterController {

	public function index()
	{
		$sql = "SELECT * FROM `placement`";
		$data1 = DB::fetch($sql,[]);
		$sql = "SELECT * FROM `reservation`";
		$data2 = DB::fetch($sql,[]);
		$this->render("main",["data1"=>$data1,"data2"=>$data2]);
	}

	public function venue()
	{
		$sql = "SELECT * FROM `placement`";
		$data1 = DB::fetch($sql,[]);
		$sql = "SELECT * FROM `reservation`";
		$data2 = DB::fetch($sql,[]);
		$this->render("venue",["data1"=>$data1,"data2"=>$data2]);
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
		extract($_POST); 
		$sql = "UPDATE `trans_res` SET `json`= ? WHERE 1";
		DB::query($sql,[json_encode($list,JSON_UNESCAPED_UNICODE)]);
	}

	public function reserve()
	{
		var_dump($_POST);
		extract($_POST);
		$sql = "UPDATE `reservation` SET `json`= ? WHERE 1";
		DB::query($sql,[json_encode($list,JSON_UNESCAPED_UNICODE)]);
	}

	public function admin_transportation()
	{
		$sql = "SELECT * FROM `transportation` WHERE 1";
		$trans = DB::fetch($sql,[]);
		$sql = "SELECT * FROM `trans_res` WHERE 1";
		$res = DB::fetch($sql,[]);
		$this->admin("admin_transportation",["trans"=>$trans,"res"=>$res]);
	}

	public function admin_transportation_manager()
	{
		$sql = "SELECT * FROM `transportation` WHERE 1";
		$trans = DB::fetch($sql,[]);
		$sql = "SELECT * FROM `trans_res` WHERE 1";
		$res = DB::fetch($sql,[]);
		$this->admin("admin_transportation_manager",["trans"=>$trans,"res"=>$res]);
	}

	public function admin_venue()
	{
		$sql = "SELECT * FROM `placement` WHERE 1";
		$data = DB::fetch($sql,[]);
		$this->admin("admin_venue",["list"=>$data]);
	}

	public function admin_venue_manager()
	{
		$sql = "SELECT * FROM `placement` WHERE 1";
		$places = DB::fetch($sql,[]);
		$sql = "SELECT * FROM `reservation` WHERE 1";
		$res = DB::fetch($sql,[]);
		$this->admin("admin_venue_manager",["places"=>$places,"res"=>$res]);
	}

	public function admin_401()
	{
		require __ROOT . "/views/admin_error.php";
		exit;
	}

	public function venue_delete()
	{
		var_dump($_POST);
		extract($_POST);
		$sql = "UPDATE `placement` SET `json`= ? WHERE 1";
		DB::query($sql,[json_encode($list,JSON_UNESCAPED_UNICODE)]);
	}

	public function transportation_delete()
	{
		var_dump($_POST);
		extract($_POST);
		$sql = "UPDATE `transportation` SET `json`= ? WHERE 1";
		DB::query($sql,[json_encode($list,JSON_UNESCAPED_UNICODE)]);
		$sql = "UPDATE `trans_res` SET `json`= ? WHERE 1";
		DB::query($sql,[json_encode($list2,JSON_UNESCAPED_UNICODE)]);
	}
}
