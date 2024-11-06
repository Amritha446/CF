<html>
    <head>
        <title>count the words</title>
    </head>
    <body>
        <cfoutput>
            <form method = "post" name = "text">
                Enter the text to be counted:
                <input name = "text" type = "text" id = "text">
                <input type = "Submit" value = "Submit">
            </form>
            <cfif structKeyExists(form, "text")>
                <cfset local.text1 = form.text>
                <cfset local.object = createObject("component","count")>
                <cfset local.result = local.object.counter(local.text1)>
                <p>count = #local.result#</p>
            </cfif>
        </cfoutput>
    </body>
</html>