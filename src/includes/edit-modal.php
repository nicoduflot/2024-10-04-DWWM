<div class="modal">
    <div class="modal-body">
        <header>
            <h3>Modifier le jeu <span id="nomJeu"></span></h3>
        </header>
        <form method="post">
            <input type="hidden" name="ID" id="ID" />
            <p>
                <label for="nom">Nom du jeu</label>
                <input type="text" name="nom" id="nom" />
            </p>
            <p>
                <label for="console">Console</label>
                <input type="text" name="console" id="console" />
            </p>
            <p>
                <label for="prix">Prix</label>
                <input type="number" name="prix" id="prix" min="0" />
            </p>
            <p>
                <label for="prenom">Propriétaire</label>
                <input type="text" name="prenom" id="prenom" readonly />
            </p>
            <p>
                <label for="commentaires">Commentaires</label><br />
                <textarea name="commentaires" id="commentaires"></textarea>
            </p>
            <p>
            <button type="submit" class="edit">Modifier</button> 
            <button type="button" class="cancel">Annuler</button>
            </p>
        </form>
    </div>
</div>