//let firstname = document.getElementById("firstname").value;
//let comment = document.getElementById("commentaire").value;

function addReview() {
    //event.preventDefault();

    let firstname = document.getElementById("firstname").value;
    document.getElementById("addName").innerHTML = firstname;

    let comment = document.getElementById("comment").value;
    document.getElementById("addComment").innerHTML = comment;
    
}
