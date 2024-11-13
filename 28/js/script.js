function validation(){
    let text1 = document.forms["form"]["text1"].value;
    let select = document.forms["form"]["select"].checked;
    let password1 = document.forms["form"]["password1"].value;
    let password2 = document.forms["form"]["password2"].value;
    
    if (text1 === '') {
        document.getElementById('textError').textContent = 'Please enter name.';
        valid = false;
      } else {
        document.getElementById('textError').textContent = '';
    }
    if (select) {
        document.getElementById('selectError').textContent = 'Please select one option.';
        valid = false;
    } else {
        document.getElementById('selectError').textContent = '';
    }
    if (password1 === '') {
        document.getElementById('passwordError').textContent = 'Please enter password.';
        valid = false;
      } else {
        document.getElementById('passwordError').textContent = '';
    }
    if (password2 === '') {
        document.getElementById('passwordError').textContent = 'Please enter password.';
        valid = false;
      } else {
        document.getElementById('passwordError').textContent = '';
    }
}