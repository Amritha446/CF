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
                <cfset local.loginObj=createObject("component","login")>
                <cfset local.output=local.loginObj.validateLogin(form.userName,form.password)>
                <cfif local.output=="false">
                    <cflocation url="admin_dashboard.cfm" addToken="no">
                <cfelse>
                    invalid login attempt
                </cfif>
            </cfif>
        </cfoutput>
    </body>
</html>