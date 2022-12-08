// AVIS Selecteurs

let firstname = document.querySelector("#firstname");
let commentaire = document.querySelector("#commentaire");
let note = document.querySelector("#note");
let buttonAvis= document.querySelector("#buttonAvis");

// écouteurs évenements
buttonAvis.addEventListener("click", addAvis);

//functions
function addAvis(event) {
    event.preventDefault();

    let addFirstname = document.createElement("h5");
    addFirstname.classList.add("firstname");
    addFirstname.textContent = firstname;
    avis_list.prepend(addFirstname);

    let addComment = document.createElement("p");
    addComment.classList.add("commentaire");
    addComment.textContent = commentaire;
    avis_list.prepend(addComment);

    let addNote = document.createElement("p");
    addNote.classList.add("note");
    addNote.textContent = note;
    avis_list.prepend(addNote);
}


