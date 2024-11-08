<html>
    <head>
        <title>cookie counter</title>
    </head>
    <body>
        <cfoutput>
            <form name = "Form" method = "post">
                submit here:
                <input type = "submit" name = "submit" value = "submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.obj=createObject("component","cookie")>
                <cfset local.result=local.obj.countCheck()>
                #local.result#
            </cfif>
        </cfoutput>
    </body>
</html>