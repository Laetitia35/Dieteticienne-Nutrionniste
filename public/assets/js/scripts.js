
// Stars
window.onload = () => {
    // On va chercher toutes les étoiles
    const stars = document.querySelectorAll(".la-star");

    // On va chercher l'input
    const note = document.querySelector("#note");

    // On boucle sur les étoiles pour leur ajouter des écouteurs d'évènements
    for(star of stars){
        // On écoute le survol
        star.addEventListener("mouseover", function() {
            resetStars();
            this.style.color = "red";
            this.classList.add("las");
            this.classList.remove("lar");
            // L'élément précédent dans le DOM (de même niveau, balise soeur)
            let previousStar = this.previousElementSibling;

            while(previousStar){
                // On passe l'étoile qui précède en rouge
                previousStar.style.color = "red";
                previousStar.classList.add("las");
                previousStar.classList.remove("lar");
                // On récupère l'étoile qui la précède
                previousStar = previousStar.previousElementSibling;
            }
        });
        // On écoute le clic
        star.addEventListener("click", function(){
            note.value = this.dataset.value;
        });

        star.addEventListener("mouseout", function(){
            resetStars(note.value);
        });
    }

    /**
     * Reset des étoiles en vérifiant la note dans l'input caché
     * @param {number} note 
     */
    function resetStars(note = 0){
        for(star of stars){
            if(star.dataset.value > note){
                star.style.color = "black";
                star.classList.add("lar");
                star.classList.remove("las");
            } else{
                star.style.color = "red";
                star.classList.add("las");
                star.classList.remove("lar");
            }
        }
    }
}
function btn_auth() {
    alert(" Il faut être un patient du Docteur Sandrine Coupart pour pouvoir s'identifier et bénéficier de certaines fonctionnalités du site web.");
}
// AVIS Selecteurs

let firstname = document.getElementById("firstname");
let comment = document.getElementById("comment");
let note = document.getElementById("note");
let buttonReview = document.getElementById("buttonReview");

// écouteurs évenements
buttonReview.addEventListener("click", addReview);

//functions
function addReview(event) {
    event.preventDefault();

        let addNote = document.createElement("p");
        addNote.classList.add("note");
        addNote.textContent = `Note sur 5 : ${note.value}`; 
        localStorage.setItem('note', note.value);
        Review_list.prepend(addNote);
    
        let addComment = document.createElement("p");
        addComment.classList.add("comment");
        addComment.textContent = `Commentaire : ${comment.value}`;
        localStorage.setItem('comment', comment.value)
        Review_list.prepend(addComment);
    
        let addFirstname = document.createElement("h6");
        addFirstname.classList.add("firstname");
        addFirstname.textContent = `Avis laisser par ${firstname.value}`;
        localStorage.setItem('firstname', firstname.value); 
        Review_list.prepend(addFirstname);   
 
}

// ajout de la méthode du localStorage à améliorer : utiliser (getItem) pour récupérer ce qui est stocker. Voir si possibilité de stockés plusieurs données et que ces données soient garder à la vue au rechargement.