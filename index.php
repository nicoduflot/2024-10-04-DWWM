<?php
require_once('./vendor/autoload.php');
use Utils\Tools;
use App\Jeuvideo;
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Jeux vidéo, Vente, Achat, Console, Pc, retro gaming, retrogaming, rétrogamming" />
    <meta name="description" content="Venez vendre acheter et échanger vos jeux vidéos, console et PC, site spécialisé pour le rétro-gaming" />
    <title>Trader Gamers | Échangez - vendez vos jeux vidéos | Console - Pc</title>
    <link rel="stylesheet" href="./assets/css/style.css" />
    <script type="module" src="./assets/js/Index.js"></script>
</head>
<body>
    <?php
    include './src/includes/header.php';
    ?>
    <main class="container">
        <section>
            <article>
                <header>
                    <h2>Les Jeux vidéos en vente</h2>
                </header>
                <?php
                $listJv = Jeuvideo::getJVById();
                Tools::prePrint($listJv[0]);
                ?>
                <table>
                    <thead>
                        <tr>
                            <th>nom</th>
                            <th>console</th>
                            <th>nbre_joueurs_max</th>
                            <th>prix</th>
                            <th>prenom</th>
                            <th>commentaires</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach($listJv as $jv){
                            ?>
                            <tr>
                                <td><?= $jv['nom'] ?></td>
                                <td><?= $jv['console'] ?></td>
                                <td><?= $jv['nbre_joueurs_max'] ?></td>
                                <td><?= $jv['prix'] ?></td>
                                <td><?= $jv['prenom'] ?></td>
                                <td><?= $jv['commentaires'] ?></td>
                                <td>
                                    <button class="edit" data-action="edit" data-id="<?= $jv['ID'] ?>">
                                        Editer
                                    </button><br />
                                    <a href="./src/delete_game.php?id=<?= $jv['ID'] ?>"><button class="delete">Supprimer</button></a>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                    </tbody>
                </table>
            </article>
        </section>
    </main>
    <?php
    include './src/includes/footer.php';
    ?>
</body>
</html>