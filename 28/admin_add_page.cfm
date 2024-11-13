<html>
    <head>
        <title>admin add page</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Enter the name to be added:
                <input type="text" name="name" required>
                Enter description
                <input type="textarea" name="description" required>
                <input type="submit" value="submit" name="submit">
                <button type="button" name="btn">Log Out</button>
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.saveObj=createObject("component","component.login")>
                <cfset local.result=local.saveObj.savePage(form.name,form.description)>
                #local.result#
            </cfif>
        </cfoutput>
    </body>
</html>