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
                <cfset local.tagObj = createObject("component","component.tagCloud")>
                <cfset local.result = local.tagObj.inputFunction(form.text)>
                <cfdump  var="#local.result#">
                <cfloop collection="#local.result#" item="item">
						<p style="font-size: #local.result[item]#px;">#item#</p>
				</cfloop>
            </cfif>
        </cfoutput>
    </body>
</html> <!---collection is used to iterate struct--->