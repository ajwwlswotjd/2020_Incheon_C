<?php 

namespace Gondr\Controller;

use Gondr\DB;
use Gondr\Lib;
class UserController extends MasterController {

	public function duplicate()
	{
		extract($_POST);
		$sql = 'SELECT * FROM `user` WHERE `id` = ?';
		$result = DB::fetch($sql,[$id]);
		echo json_encode(["result"=> $result ? true : false],JSON_UNESCAPED_UNICODE);
	}

	public function join()
	{
		extract($_POST);
		$sql = "INSERT INTO `user`(`idx`, `id`, `password`, `name`, `phone`) VALUES (null,?,?,?,?)";
		$result = DB::query($sql,[$id,$pwd,$name,$phone]);
		echo json_encode(["result"=> $result ? true : false],JSON_UNESCAPED_UNICODE);		
	}

	public function login()
	{
		extract($_POST);
		$sql = "SELECT * FROM `user` WHERE `id` = ?";
		$result = DB::fetch($sql,[$id]);
		if($result){
			$sql = "SELECT * FROM `user` WHERE `id` = ? AND `password` = ?";
			$user = DB::fetch($sql,[$id,$pwd]);
			if($user){
				$_SESSION['user'] = $user;
				echo json_encode(["result"=>2],JSON_UNESCAPED_UNICODE);
				exit;
			}else {
				echo json_encode(["result"=>1],JSON_UNESCAPED_UNICODE);
				exit;
			}
		}else {
			echo json_encode(["result"=>0],JSON_UNESCAPED_UNICODE);
			exit;
		}
	}

	public function logout()
	{
		unset($_SESSION['user']);
		echo "<script>location.href='/'</script>";
	}
}
