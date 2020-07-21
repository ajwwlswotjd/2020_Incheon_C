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

}
