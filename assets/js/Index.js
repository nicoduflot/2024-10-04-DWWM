import loaded, {q} from './outils.js';

console.log('chargement de la page');

window.addEventListener('DOMContentLoaded', function(){
    function removeFormData(){
        document.getElementById('ID').value = '';
        document.getElementById('nom').value = '';
        document.getElementById('console').value = '';
        document.getElementById('prix').value = '';
        document.getElementById('prenom').value = '';
        document.getElementById('commentaires').value = '';
    }

    const modalBody = document.querySelector('.modal-body');
    modalBody.addEventListener('click', function(event){
        event.stopPropagation();
    });

    const modal = document.querySelector('.modal');
    modal.addEventListener('click', function(event){
        event.stopPropagation();
        modal.classList.remove('show');
        removeFormData();
    });

    const cancelEdit = document.querySelector('.modal button.cancel');
    cancelEdit.addEventListener('click', function(){
        modal.classList.remove('show');
        removeFormData();
    });

    document.addEventListener('keyup', function(event){
        if(event.key == 'Escape'){
            modal.classList.remove('show');
            removeFormData();
        }
    });

    const editButtons = document.querySelectorAll('[data-action][data-id]');
    editButtons.forEach(function(button){
        button.addEventListener('click', function(){
            //console.log(`./src/mod_jeu.php?id=${button.dataset.id}&action=${button.dataset.action}`);
            modal.classList.add('show');
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
            .catch(function(erreur){
                console.error(erreur);
            });
        });
    });
});