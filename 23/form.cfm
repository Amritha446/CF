<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>form validation</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
        <link href="style/style.css" rel="stylesheet">
    </head>
    <body>
        <cfoutput>
            <div class="container col-6">
                <div class="col-10">
                    <img src="assets/Capture.JPG" alt="img">
                </div>
                <div class="col-12">
                    <div class="mt-3 col-11 secondBox">
                        Employment Application
                        <p class="fw-1 para">Infinity Box Inc.</p>
                    </div>
                    <form method="post" id = "form" class="mt-2 form" enctype="multipart/form-data">
                        <div class="col-5 text-secondary"> which position are you applying for?</div>
                        <select name = "position" class = "mt-2" id = "class" >
                            <option></option>
                            <option>Interface Designer</option>
                            <option>Software Engineer</option>
                            <option>System Administrator</option>
                            <option>Office manager</option>
                        </select>
                        <div class="error text-danger" id="positionError"></div>
                        <div class="col-3 text-secondary mt-2" >Are you willing to relocate?</div>
                        <input type = "radio" name = "relocate" value = "Yes" class="mt-1 me-1" >Yes<br>
                        <input type = "radio" name = "relocate" value = "No" class="mt-2 me-1">No<br>
                        <div class="error text-danger" id="relocateError"></div>

                        <div class="col-3 text-secondary mt-2">When can you start?</div>
                        <input type = "date" name = "date" required="yes" id="date" required><br>
                        <div class="error text-danger" id="dateError"></div>

                        <div class="col-3 text-secondary mt-2">Portfolio website</div>
                        <input type = "url" name = "site" class = "mt-1" required><br>

                        <div class="col-5 text-secondary mt-2">Attach a copy of your resume</div>
                        <input type = "file" name = "resume" class = "mt-1" required><br>
                        <div class = "para">Word or PDF Documents Only</div><br>

                        <div class = "col-5 text-secondary mt-2 required">Salary requirements</div>
                        <input type = "text" name="sal" class = "mt-1" required><br>

                        <div class = "para">Your contact information</div>
                        <div class = "col-5 text-secondary mt-2" required>Name</div>
                        <input type = "text" name="name1" class = "mt-1 col-2" required>
                        <div class="error text-danger" id="firstnameError"></div>

                        <input type = "text" name="name2" class = "mt-1 col-2" required><br>
                        <div class="error text-danger" id="lastnameError"></div>

                        <div class = "col-5 text-secondary mt-2">Email address</div>
                        <input type = "text" name="mail" class="mt-1" required>
                        <div class="error text-danger" id="mailError"></div>

                        <div class = "col-5 text-secondary mt-2">Phone</div>
                        <input type = "text" name = "p1" class = "mt-1 col-1" maxlength = "3" required>
                        <input type = "text" name = "p2" class = "mt-1 col-1" maxlength = "3" required>
                        <input type = "text" name = "p3" class = "mt-1 col-1" maxlength = "4" required><br>
                        <div class="error text-danger" id="phoneError"></div>

                        <button type = "submit" name="submit" onClick="return validate()">submit</button><br>
                        This site is protected by reCAPTCHA Enterprise and the Google 
                        <a href="#">Privacy Policy </a> and <a href="#">Terms of Service apply.</a>
                    </form>
                </div>
                <cfif structKeyExists(form,"submit")>
                    <cfset local.formObj=createObject("component","form")>
                    <cfset local.result=local.formObj.form(form.position,form.relocate,form.date,form.site,form.resume,form.sal,form.name1,form.name2,form.mail,form.p1,form.p2,form.p3)>
                    <cflocation url="welcome.cfm">
                <cfelse>
                    data missing
                </cfif> 
                <script src="js/validation.js"></script>
            </div>
        </cfoutput>
    </body>
</html>