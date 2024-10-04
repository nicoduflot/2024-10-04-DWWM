<?php
require_once('../vendor/autoload.php');

use App\Jeuvideo;
use Utils\Tools;

if(isset($_POST['id']) && isset($_POST['id']) && $_POST['id'] !== ''){
    $jv_name = $_POST['nomJeu'];
    $response = Jeuvideo::deleteJV($_POST['id']);
    header('Location: ../');
}else{
    $JV = Jeuvideo::getJVById($_GET['id'])[0];
    $jv_name = $JV['nom'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trader Gamers | supprimer le jeu <?= $jv_name ?></title>
    <link rel="stylesheet" href="../assets/css/style.css" />
</head>
<body>
    <?php
    include './includes/header.php';
    ?>
    <main class="container">
        <section>
            <article>
                <?php
                if(!isset($_POST['id'])){
                    ?>
                    <h2>Suppression du jeu : <?= $jv_name ?> ?</h2>
                    <form method="post">
                        <input type="hidden" name="id" id="id" value="<?= $JV['ID'] ?>" />
                        <input type="hidden" name="nomJeu" id="nomJeu" value="<?= $JV['nom'] ?>" />
                        <button type="submit" class="delete">OUI</button> <a href="../"><button type="button" class="cancel">NON</button></a>
                    </form>
                    <?php
                }else{

                }
                ?>
            </article>
        </section>
    </main>
    <?php
    include './includes/footer.php';
    ?>
</body>
</html>