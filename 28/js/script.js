function validation(event){
    event.preventDefault();
    let text = document.forms["form"]["text1"].value;
    let select = document.forms["form"]["role_id"].value;
    let password1 = document.forms["form"]["password1"].value;
    let password2 = document.forms["form"]["password2"].value;
    let valid=true;
    
    if (text === '') {
        document.getElementById('textError').textContent = 'Please enter name.';
        valid = false;
      } else {
        document.getElementById('textError').textContent = '';
    }
    /*if (select === '') {
        document.getElementById('selectError').textContent = 'Please select one option.';
        valid = false;
    } else {
        document.getElementById('selectError').textContent = '';
    }*/
    if (password1 === '') {
        document.getElementById('passwordError').textContent = 'Please enter password.';
        valid = false;
      } else {
        document.getElementById('passwordError').textContent = '';
    }
    if (password2 === '') {
        document.getElementById('passwordError2').textContent = 'Please re-enter password.';
        valid = false;
      } else {
        document.getElementById('passwordError2').textContent = '';
    }
    return valid;
}