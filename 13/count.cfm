<html>
    <head>
        <title>count the words</title>
    </head>
    <body>
        <cfoutput>
            <form method="post" name="text">
                Enter the text to be counted:
                <input name="text" type="text" id="text">
                <input type="Submit" value="Submit">
            </form>
            <cfif structKeyExists(form, "text")>
                <cfset text1=form.text>
                <cfset object=createObject("component","count")>
                <cfset result=object.counter(text1)>
                <p>count =#result#</p>
            </cfif>
        </cfoutput>
    </body>
</html>