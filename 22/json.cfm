<html>
    <head>
        <title>Table of data</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Submit here:
                <input type="submit" name="submit">
            </form>
            <cfif structKeyExists(form, "submit")>
                <cfset local.obj=createObject("component","json")>
                <cfset local.result=local.obj.fileRead()>
                <cfdump  var="#local.result#">
            </cfif>
        </cfoutput>
    </body>
</html>