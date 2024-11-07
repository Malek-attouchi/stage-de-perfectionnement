document.addEventListener('DOMContentLoaded', function () {
    // Attendre que le document soit chargé avant d'ajouter l'écouteur d'événements
    document.querySelector('.form').addEventListener('submit', function (e) {
        e.preventDefault();

        // Récupérer les données du formulaire
        const nom = document.getElementById('nom').value;
        const prenom = document.getElementById('prenom').value;
        const email = document.getElementById('email').value;
        const telephone = document.getElementById('telephone').value;
        const sujet = document.getElementById('sujet').value;

        // Créer un objet FormData pour envoyer les données
        const formData = new FormData();
        formData.append('nom', nom);
        formData.append('prenom', prenom);
        formData.append('email', email);
        formData.append('telephone', telephone);
        formData.append('sujet', sujet);

        // Vérifier si au moins un champ est renseigné
       
            fetch('http://localhost/assurence/backend_stage/ajouter_contactformdata.php', {
                method: 'POST',
                body: formData,
            })
                .then(response => {
                    console.log('Réponse du serveur :', response);
                    alert("Votre donnée a bien ete ajoutee. Merci!");
                    window.location.reload();
                    return response.json();
                })
                .catch(error => {
                    console.error('Erreur lors de la requête fetch:', error);
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                });
        
    });
});
