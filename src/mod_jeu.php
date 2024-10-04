<?php

require_once('../vendor/autoload.php');

use App\Jeuvideo;

if( isset($_GET['action']) && isset($_GET['id']) ){
    if($_GET['action'] !== '' && $_GET['id'] !== ''){
        $jv = Jeuvideo::getJVById($_GET['id']);
        echo json_encode($jv[0]);
    }
}