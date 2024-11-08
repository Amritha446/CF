<html>
    <head>
        <title>login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <cfoutput>
            <form method="post" id = "form">
                Enter your name:
                <input type="text" name="name">
                <div class="error text-danger" id="nameError"></div><br>
                Enter password:
                <input type="password" name="passwordd"><br>
                <div class="error text-danger" id="passwordError"></div><br>
                <button type = "submit" onClick="validation()" name="submit">submit</button>
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.login = createObject("component","login")>
                <cfset local.login.authenticateUser(form.name,form.passwordd)>
                <cfif local.login.isLoggedIn()>
                <cflocation url="welcome.cfm" addToken="no">
                <cfelse>
                    invalid output
                </cfif>
            </cfif>
            <script src="js/validation.js"></script>
        </cfoutput>
    </body>
</html>