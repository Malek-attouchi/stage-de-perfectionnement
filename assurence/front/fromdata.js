document.addEventListener('DOMContentLoaded', function () {
    // Attendre que le document soit chargé avant d'ajouter l'écouteur d'événements
    document.getElementById('form2').addEventListener('submit', function (e) {
        e.preventDefault();

        // Récupérer les données du formulaire
        const nom = document.getElementById('nom').value;
        const prenom = document.getElementById('prenom').value;
        const phone = document.getElementById('phone').value;
        const email = document.getElementById('email').value;

        // Motif
        const motifSelect = document.getElementById('motif');
        const motifSelectIndex = motifSelect.selectedIndex;
        const motifSelectOption = motifSelect.options[motifSelectIndex];
        const motifSelectText = motifSelectOption.text;

        // Texte du motif
        const motifText = document.getElementById('motifText').value;

        // Assureur
        const assureurSelect = document.getElementById('assureur');
        const assureur = assureurSelect.options[assureurSelect.selectedIndex].text;

        // Numéro de contrat
        const numcontrat = document.getElementById('numcontrat').value;

        // Fichier
        const fileinputs = document.getElementById('fileinputs');
        const file = fileinputs.files[0];

        // Prévisualisation de l'image
        const preview = document.getElementById("fileinputs");
        const reader = new FileReader();

        reader.addEventListener(
            "load",
            () => {
                // On convertit l'image en une chaîne de caractères base64
                preview.src = reader.result;
            },
            false,
        );

        if (file) {
            reader.readAsDataURL(file);
            console.log("base64", reader);
        }

        // Créer un objet FormData pour envoyer les données
        const formData = new FormData();
        formData.append('nom', nom);
        formData.append('prenom', prenom);
        formData.append('phone', phone);
        formData.append('email', email);
        formData.append('motifselect', motifSelectText);
        formData.append('motiftext', motifText);
        formData.append('assureur', assureur);
        console.log("ASSUREUR", assureur);
        formData.append('numcontrat', numcontrat);
        formData.append('fileinputs', file);

        // Vérifier si au moins un champ est renseigné
        if (formData.has('nom') || formData.has('prenom') || formData.has('phone') || formData.has('email') || formData.has('motifselect') || formData.has('motiftext') || formData.has('assureur') || formData.has('numcontrat')) {

            // Effectuer la requête API en utilisant la fonction fetch
            fetch('http://localhost/assurence/backend_stage/ajouter_formdata.php', {
                method: 'POST',
                body: formData,
            })
            .then(response => response.json())
            .then(data => {
                // Traiter la réponse de l'API ici
                console.log("Réponse de l'API :", data);
            })
            .catch(error => {
                console.error("Erreur lors de la requête fetch :", error);
            });
        } else {
            console.log("Au moins un champ doit être renseigné.");
        }
    });
});
