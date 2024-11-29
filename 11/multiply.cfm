<html>
    <head>
        <title>Multiplying parameters</title>
    </head>
    <body>
        <form method = "post" name = "multiply">
        enter the digits:
        <input type = "number" name = "num" id="num">
        <input type = "submit" value = "submit">
        </form>
        <cfif structKeyExists(form,"num")>
            <cfset local.num1 = form.num>
            <cfset local.obj=createObject("component","component.multiply")>
            <cfset local.result=local.obj.multiplyNum()>
            <cfoutput>
                product of entered elements:#local.result#
            </cfoutput>
        </cfif>
    </body>
</html>