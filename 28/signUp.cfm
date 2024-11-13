<html>
    <head>
        <title>Sign up</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Enter User Name:
                <input type = "text" name="text1" >
                <div class="error text-danger" id="textError"></div><br><br>
                Role of Designation:
                <select name = "role" class = "mt-2" id = "class" name="select">
                    <option>Admin</option>
                    <option>Editor</option>
                    <option>User</option>
                </select>
                <br><br>
                <div class="error text-danger" id="selectError"></div><br><br>
                Enter Password:
                <input type = "password" name="password1"><br><br>
                <div class="error text-danger" id="passwordError"></div><br><br>
                Confirm Password:
                <input type = "password" name="password2"><br><br>
                <div class="error text-danger" id="passwordError"></div><br><br>
                <button type = "submit" name="submit" onClick="return validation()">submit</button>
            </form>
            Already have an account? <a href="admin_login.cfm">Log in</a>
            <cfif structKeyExists(form,"submit")>
                <cfset local.objSignup = createObject("component","component.login")>
                <cfset local.result = local.objSignup.signIn(form.text1,form.role,form.password1,form.password2)>
                succeesfully inserted
                <cfif local.result=="true"> 
                    <cflocation url="admin_login.cfm" addToken="no">
                <cfelse>
                    invalid attempt
                </cfif>
            </cfif>
            <script src="js/script.js"></script>
        </cfoutput>
    </body>
</html>