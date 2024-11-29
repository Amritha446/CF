function validateForm() {
    var number = document.forms["form"]["number"].value;
    if (isNaN(number) || number.trim() === "") {
        alert("Please enter a valid number.");
        return false;
    }
    return true;
}