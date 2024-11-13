<html>
    <head>
        <title>admin login</title>
    </head>
    <body>
        <cfoutput>
            <form method="post" name="form">
                Enter username:
                <input type="text" name="userName" required>
                Enter password:
                <input type="password" name="password" required>
                <button type="submit" value="submit" name="submit">submit</button>
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.loginObj=createObject("component","component.login")>
                <cfset local.output=local.loginObj.validateLogin(form.userName,local.encrypted_pass)>
                <cfif local.output=="true">
                    <cflocation url="admin_dashboard.cfm" addToken="no">
                <cfelse>
                    invalid login attempt
                </cfif>
            </cfif>
        </cfoutput>
    </body>
</html>