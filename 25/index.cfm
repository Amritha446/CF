<html>
    <head>
        <title>index page</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Input text here:
                <input type="textarea" name="text" required>
                <input type="submit" name="submit" value="submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.tagObj = createObject("component","tagCloud")>
                <cfset local.result = local.tagObj.inputFunction(form.text)>
                <cfdump  var="#local.result#">
            </cfif>
        </cfoutput>
    </body>
</html>