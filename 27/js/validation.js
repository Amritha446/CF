function validation(){
    let valid = true;
    let name = document.forms["form"]["name"].value;
    let password = document.forms["form"]["passwordd"].value;

    if (name === '' || !/^[a-zA-Z ]+$/.test(name)) {
        document.getElementById('nameError').textContent = 'Please enter a valid name.';
        valid = false;
    } else {
        document.getElementById('nameError').textContent = '';
    }
    if (password.length < 4 || !/[a-z]/.test(password) || !/[0-9]/.test(password)) {
        passwordError.textContent = 'Password must be at least 4 characters and include lowercase and a number.';
        valid = false;
      } else {
        passwordError.textContent = '';
      }
}