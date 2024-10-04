<?php

namespace App;

use Utils\Tools;
use PDO;

class Jeuvideo{
    private $id;
    private $id_possesseur;
    private $nom;
    private $console;
    private $prix;
    private $nbre_joueurs_max;
    private $commentaires;
    private $date_ajout;
    private $date_modif;

    /**
     * Jeuvideo constructor
     * @param int $id
     * @param int $id_possesseur
     * @param string $nom
     * @param string $console
     * @param float $prix
     * @param int nbre_joueurs_max
     * @param string $commentaires
     * @param int $date_ajout
     * @param int $date_modif
     */
    public function __construct(
        $id = null, 
        $id_possesseur = null, 
        $nom = null, 
        $console = null, 
        $prix = null, 
        $nbre_joueurs_max = null, 
        $commentaires = null, 
        $date_ajout = null, 
        $date_modif = null
        )
    {
        $this->id = $id;
        $this->id_possesseur = $id_possesseur;
        $this->nom = $nom;
        $this->console = $console;
        $this->prix = $prix;
        $this->nbre_joueurs_max = $nbre_joueurs_max;
        $this->commentaires = $commentaires;
        $this->date_ajout = $date_ajout;
        $this->date_modif = $date_modif;
    }

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of id_possesseur
     */ 
    public function getId_possesseur()
    {
        return $this->id_possesseur;
    }

    /**
     * Set the value of id_possesseur
     *
     * @return  self
     */ 
    public function setId_possesseur($id_possesseur)
    {
        $this->id_possesseur = $id_possesseur;

        return $this;
    }

    /**
     * Get the value of nom
     */ 
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set the value of nom
     *
     * @return  self
     */ 
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get the value of console
     */ 
    public function getConsole()
    {
        return $this->console;
    }

    /**
     * Set the value of console
     *
     * @return  self
     */ 
    public function setConsole($console)
    {
        $this->console = $console;

        return $this;
    }

    /**
     * Get the value of prix
     */ 
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * Set the value of prix
     *
     * @return  self
     */ 
    public function setPrix($prix)
    {
        $this->prix = $prix;

        return $this;
    }

    /**
     * Get the value of nbre_joueurs_max
     */ 
    public function getNbre_joueurs_max()
    {
        return $this->nbre_joueurs_max;
    }

    /**
     * Set the value of nbre_joueurs_max
     *
     * @return  self
     */ 
    public function setNbre_joueurs_max($nbre_joueurs_max)
    {
        $this->nbre_joueurs_max = $nbre_joueurs_max;

        return $this;
    }

    /**
     * Get the value of commentaires
     */ 
    public function getCommentaires()
    {
        return $this->commentaires;
    }

    /**
     * Set the value of commentaires
     *
     * @return  self
     */ 
    public function setCommentaires($commentaires)
    {
        $this->commentaires = $commentaires;

        return $this;
    }

    /**
     * Get the value of date_ajout
     */ 
    public function getDate_ajout()
    {
        return $this->date_ajout;
    }

    /**
     * Set the value of date_ajout
     *
     * @return  self
     */ 
    public function setDate_ajout($date_ajout)
    {
        $this->date_ajout = $date_ajout;

        return $this;
    }

    /**
     * Get the value of date_modif
     */ 
    public function getDate_modif()
    {
        return $this->date_modif;
    }

    /**
     * Set the value of date_modif
     *
     * @return  self
     */ 
    public function setDate_modif($date_modif)
    {
        $this->date_modif = $date_modif;

        return $this;
    }

    static function getJVById($id_jeu = null){
        $conditions = '';
        $params = [];
        $jv_list = [];
        if($id_jeu != null){
            $conditions = '
            WHERE 
                `jv`.`id` = :id;';
            $params = [
                'id' => $id_jeu
            ];
        }
        $sql = '
        SELECT 
            `jv`.*, `p`.`prenom` 
        FROM 
            `jeux_video` as `jv` LEFT JOIN 
            `possesseur` as `p` ON `jv`.`id_possesseur` = `p`.`id`
        '.$conditions.'
        ';

        
        $request = Tools::modBdd($sql, $params);
        while($jeu = $request->fetch(PDO::FETCH_ASSOC)){
            array_push($jv_list, $jeu);
        }
        return $jv_list;
    }

    static function deleteJV($id){
        $sql = '
        DELETE FROM `jeux_video` as `jv` WHERE `jv`.`ID` = :id
        ';
        $params = ['id' => $id];
        $request = Tools::modBdd($sql, $params);
        return $request;
    }

    static function updateJV($id, $params){
        $sql = '
        UPDATE `jeux_video` as `jv` 
        SET 
            `jv`.`nom` = :nom,
            `jv`.`console` = :console,
            `jv`.`prix` = :prix,
            `jv`.`commentaires` = :commentaires
        WHERE `jv`.`ID` = :ID
        ';
        $request = Tools::modBdd($sql, $params);
        return $request;
    }
}