<html>
    <head>
        <title>Welcome page</title>
    </head>
    <body>
        <cfoutput>
            <cfset local.login = createObject("component","login")>
            <cfset local.result=local.login.isLoggedIn()>
            <cfif local.login.isLoggedIn()>
                welcome
            <cfelse>
                <cflocation url="login.cfm" addToken="no">
            </cfif>
            <a href="login.cfc?method=logOut">Back to login</a>
        </cfoutput>
    </body>
</html>