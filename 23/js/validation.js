
function validate(){
    let position = document.forms["form"]["position"].value;
    let relocate = document.forms["form"]["relocate"].checked;
    let date1 = document.forms["form"]["date"].value;
    let firstNme = document.forms["form"]["name1"].value;
    let lastNme = document.forms["form"]["name2"].value;
    let mail1 = document.forms["form"]["mail"].value;
    let p1 = document.forms["form"]["p1"].value;
    let p2 = document.forms["form"]["p2"].value;
    let p3 = document.forms["form"]["p3"].value;
    let valid = true;

    if (relocate) {
        document.getElementById('relocateError').textContent = 'Please select one option.';
        valid = false;
    } else {
        document.getElementById('relocateError').textContent = '';
    }
    if (date1 === '') {
        document.getElementById('positionError').textContent = 'Please enter joining date.';
        valid = false;
      } else {
        document.getElementById('positionError').textContent = '';
    }
    if (date1 === '') {
        document.getElementById('dateError').textContent = 'Please enter joining date.';
        valid = false;
      } else {
        document.getElementById('dateError').textContent = '';
    }
    if (firstNme === '' || !/^[a-zA-Z ]+$/.test(firstNme)) {
        document.getElementById('firstnameError').textContent = 'Please enter a valid name.';
        valid = false;
    } else {
        document.getElementById('firstnameError').textContent = '';
    }
    if (lastNme === '' || !/^[a-zA-Z ]+$/.test(lastNme)) {
        document.getElementById('lastnameError').textContent = 'Please enter a valid name.';
        valid = false;
    } else {
        document.getElementById('lastnameError').textContent = '';
    }
    if (mail1 === '' || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(mail1)) {
        document.getElementById('mailError').textContent = 'Please enter a valid email.';
        valid = false;
    } else {
        document.getElementById('mailError').textContent = '';
    }
    if ((p1 === '') && (p2 === '') && (p3 === '' )){
        document.getElementById('phoneError').textContent = 'Please enter a valid 10-digit phone number.';
        valid = false;
    } else {
        document.getElementById('phoneError').textContent = '';
    }
   return valid;

}