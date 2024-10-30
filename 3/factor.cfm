<html>
    <head>
        <title>Factor finder</title>
    </head>
    <body>
        <cfoutput>
            <form method="post" name="numberForm">
                Enter the number:
                <input name="num1" type="text" id="num1">
                <input type="Submit" value="Submit">
            </form>
            <cfif structKeyExists(form, "num1")>
                
                <cfset number = form.num1>
                <cfset output=createObject("component", "factors")>
                <cfset result=output.factor_finder(number)>
                #result#
            </cfif>
        </cfoutput>
    </body>
</html>