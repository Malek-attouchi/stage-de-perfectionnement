$(document).ready(function() {
    // Charger la liste des assureurs lors du chargement de la page
    $.ajax({
        url: 'http://localhost/assurence/backend_stage/recuperer_tous_assureur.php',
        type: 'GET',
        dataType: 'json',
        success: function(response)  {
            if (!response.error) {
                var assureurs = response.assur;

                // Mettre à jour le contenu du champ "Assureur"
                var assureurSelect = $('#assureur');
                assureurSelect.empty(); // Supprimer les anciennes options
                assureurSelect.append('<option value="assureur" selected disabled>Choisir un assureur</option>');

                // Ajouter les nouvelles options
                $.each(assureurs, function(index, value) {
                

                    assureurSelect.append('<option value="' + index + '">' + value.assureur + '</option>');
                });

                //console.log('Options ajoutées à la liste déroulante:', assureurSelect.html());
            } else {
                console.error('Erreur lors du chargement des assureurs.');
            }
        },
        error: function() {
            console.error('Erreur de requête AJAX.');
        }
    });
});