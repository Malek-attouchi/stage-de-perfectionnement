
$(document).ready(function() {
    // Charger la liste des motifs lors du chargement de la page
    $.ajax({
        url: 'http://localhost/Resilatum/assurence/backend_stage/motif.php',
        type: 'GET',
        dataType: 'json',
        success: function(response) {
            if (!response.error) {
                motifs = response.motif;


                // Mettre à jour le contenu du champ "Motif"
                var motifSelect = $('#motif');
                motifSelect.empty(); // Supprimer les anciennes options
                motifSelect.append('<option value="motif" selected disabled>Choisir un motif</option>');

                // Ajouter les nouvelles options
                $.each(motifs, function(index, value) {


                    motifSelect.append('<option value="' + index + '">' + value.name + '</option>');
                });
            } else {
                console.error('Erreur lors du chargement des motifs.');
            }
        },
        error: function() {
            console.error('Erreur de requête AJAX.');
        }
    });

    // Événement de changement du champ "Motif"
    $('#motif').change(function() {
        var selectedMotifIndex = $(this).val(); // Récupérer l'index du motif sélectionné
        var selectedMotifLetter = motifs[selectedMotifIndex].lettre_motif; // Récupérer la lettre correspondante

        // Afficher la lettre du motif dans le champ "motifText"
        $('#motifText').val(selectedMotifLetter);
    });
});
