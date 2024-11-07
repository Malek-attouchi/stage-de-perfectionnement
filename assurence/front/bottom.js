$(document).ready(function() {
    // Ajoutez un gestionnaire d'événement clic au bouton Envoyer
    $("#submitBtn").on("click", function() {
        // Vérifiez si tous les champs obligatoires sont remplis
        if ($("#numcontrat").val() === '' || $("#assureur").val() === '' || $("#nom").val() === '' || $("#prenom").val() === '' || $("#phone").val() === '' || $("#email").val() === '' || $("#motif").val() === '' || $("#motifText").val() === '') {
            alert("Veuillez remplir tous les champs obligatoires.");
            return; // Arrête l'exécution de la fonction si un champ est vide
        }

        // Vérifiez si les champs Nom et Prenom contiennent uniquement des lettres alphabétiques
        var nomRegex = /^[a-zA-Z]+$/;
        if (!nomRegex.test($("#nom").val())) {
            alert("Le champ Nom ne doit contenir que des lettres alphabetiques.");
            return;
        }

        if (!nomRegex.test($("#prenom").val())) {
            alert("Le champ Prenom ne doit contenir que des lettres alphabetiques.");
            return;
        }

        // Vérifiez si le champ Numero contient exactement 8 chiffres
        var numeroRegex = /^\d{8}$/;
        if (!numeroRegex.test($("#phone").val())) {
            alert("Le champ Numero de telephone doit contenir exactement 8 chiffres.");
            return;
        }

        // Récupérez les données du formulaire
        var formData = {
            numcontrat: $("#numcontrat").val(),
            assureur: $("#assureur").val(),
            Nom: $("#nom").val(),
            Prenom: $("#prenom").val(),
            Numero: $("#phone").val(),
            Email: $("#email").val(),
            fileinputs: $("#fileinput").val(),
            motif: $("#motif").val(),
            motifText: $("#motifText").val()
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
