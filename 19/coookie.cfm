<html>
    <head>
        <title>cookie counter</title>
    </head>
    <body>
        <cfoutput>

            <form name="Form" method="post">
                submit here:
                <input type="submit" name="submit" value="submit">
            </form>
            <cfif isDefined(cookie.TimeVisited)>
                <cfcookie name="TimeVisited" value=0 expires=30 httponly="yes" />
            </cfif>

            <cfif isDefined(form.submit)>
                <cfset cookie.TimeVisited=cookie.TimeVisited+1>
            </cfif>
            number of times page opened:#cookie.TimeVisited#
        </cfoutput>
    </body>
</html>