import loaded, {q} from './outils.js';

console.log('chargement de la page');

window.addEventListener('DOMContentLoaded', function(){
    const editButtons = document.querySelectorAll('[data-action][data-id]');
    editButtons.forEach(function(button){
        button.addEventListener('click', function(){
            //console.log(`./src/mod_jeu.php?id=${button.dataset.id}&action=${button.dataset.action}`);
            fetch(`./src/mod_jeu.php?id=${button.dataset.id}&action=${button.dataset.action}`)
            .then(function(reponse){
                return reponse.json();
            })
            .then(function(data){
                document.getElementById('ID').value = data.ID;
                document.getElementById('nom').value = data.nom;
                document.getElementById('console').value = data.console;
                document.getElementById('prix').value = data.prix;
                document.getElementById('prenom').value = data.prenom;
                document.getElementById('commentaires').value = data.commentaires;
            })
        });
    });
});