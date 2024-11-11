
<html>
    <head>
        <meta charset="UTF-8">
        <title>ajax</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
    </head>
    <body>
        <cfoutput>
            <form>
                Enter your first name:
                <input type="text" name="firstName" id="firstName">
                Enter your mail id:
                <input type="mail" name="email" id="email"><br>
                <span id="emailError"></span>
                <button type="button" name="submit1" id="agree" onclick="checkEmail()">check</button><br>
                <button type="button" name="submit" id="submit" disabled onclick="submitForm()">submit</button>
            </form>
        </cfoutput>
        <script>
            function checkEmail(){
                console.log('hi');
                var email=$('#email').val();
                if(email.trim()===" "){
                    $('#submit').prop('disabled',true);
                    return;
               }
               $.ajax({
                    url : 'subscription.cfc?method=checkEmailExists',
                    type: 'GET',
                    data:{email:email},
                    success:function(response){
                        console.log(response);
                        if(response=="true"){
                             alert('email already registered');
                            $('#emailError').text('email already registered').show();
                            $('#submit').prop('disabled',true);
                        }
                        else{
                            $('#emailError').text('').hide();
                            $('#submit').prop('disabled',false);
                        }
                    }
                });
            }
            function submitForm(){
               var firstName=$('#firstName').val();
               var email=$('#email').val();
               
               $.ajax({
                    url:'subscription.cfc?method=insertSubscription',
                    type:'POST',
                    data:{firstName:firstName,email:email},
                    success:function(response){
                        if(response=="true"){
                            alert("subscription success");
                        }
                        else{
                            alert("error");
                        }
                    }
               });
            } 
        </script>
    </body>
</html>