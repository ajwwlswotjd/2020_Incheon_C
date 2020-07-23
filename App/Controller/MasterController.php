<?php 

namespace Gondr\Controller;

use Gondr\Lib;

class MasterController {

	public function render($page,$data=[])
	{
		extract($data);

		require __ROOT . "/views/header.php";
		require __ROOT . "/views/".$page.".php";
		require __ROOT . "/views/footer.php";
	}

	public function admin($page,$data=[])
	{
		extract($data);

		require __ROOT . "/views/admin_header.php";
		require __ROOT . "/views/".$page.".php";
	}
}
