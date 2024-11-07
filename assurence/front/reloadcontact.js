$(document).ready(function() {
    // Ajoutez un gestionnaire d'événement clic au bouton Envoyer
    $("#sbt").on("click", function() {
        // Vérifiez si tous les champs obligatoires sont remplis
        if ($("#nom").val() === '' || $("#prenom").val() === ''  || $("#telephone").val() === '' 
        || $("#email").val() === '' || $("#sujet").val() === '' ) {
            alert("Veuillez remplir tous les champs obligatoires.");
            return; // Arrête l'exécution de la fonction si un champ est vide
        }

        // Récupérez les données du formulaire
        var formData = {
            nom: $("#nom").val(),
            prenom: $("#prenom").val(),
            Nom: $("#nom").val(),
            Prenom: $("#prenom").val(),
            telephone: $("#telephone").val(),
            Email: $("#email").val(),
            sujet: $("#sujet").val(),

        };

        // Envoyez les données à la base de données via AJAX
        $.ajax({
            type: "POST",
            url: "http://localhost/assurence/backend_stage/ajouter_formdata.php",
            data: formData,
            success: function(response) {
                // En cas de succès, actualisez la page et affichez l'alerte
                location.reload();
                alert("Votre donnee a bien ete ajoutee. Merci!");
            },
            error: function(error) {
                console.error("Erreur lors de l'envoi des données: ", error);
                // Gérez les erreurs ici
            }
        });
    });
});
