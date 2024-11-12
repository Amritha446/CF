<html>
    <head>
        <title>admin add page</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Enter the name to be updated:
                <input type="text" name="name" required>
                Enter description to be updated:
                <input type="textarea" name="description" required>
                <input type="submit" value="submit" name="submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.saveObj=createObject("component","login")>
                <cfset local.result=local.saveObj.editPage(form.name,form.description,#url.id#)>
                #local.result#
            </cfif>
        </cfoutput>
    </body>
</html>