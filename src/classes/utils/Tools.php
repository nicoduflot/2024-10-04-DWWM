<?php

namespace Utils;

use Exception;
use PDO;

class Tools implements Config_interface{
    /* on utilise les attributs déclarés dans l'interface Config_interface pour la configuration du mysql local */
    public static function setBdd(){
        try{
            $bdd = new PDO('mysql:host=' . Config_interface::DBHOST . ';dbname=' . Config_interface::DBNAME .';charset=UTF8',Config_interface::DBUSER , Config_interface::DBUPSW , array(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION));
        }catch(Exception $e){
            die('Erreur de connexion : '. $e->getMessage());
        }
        return $bdd;
    }
}