<?php
    $width = 360;
    $height = 100;

    $code = $_GET['code'];
    $_SESSION['captcha'] = $code;

    $im = imagecreatetruecolor($width, $height);
    $bg = imagecolorallocate($im, 51, 48, 48);
    $fg = imagecolorallocate($im, 255, 255, 255);
    $lg = imagecolorallocate($im, 255, 255, 255);
    imagefill($im, 0, 0, $bg);
    imagestring($im, 1000, $width/2, 100/2, $code, $fg);
    imageline($im, 0, (100/2)+10, $width, (100/2)+10, $lg);
    header('Content-type: image/png');
    imagepng($im);
    imagedestroy($im);
?> 