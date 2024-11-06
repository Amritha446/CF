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
            <cfset local.arr = listToArray(num1,"")>
            <cfset local.result = 1>
            <cfset local.array = []>
            <cfloop from = "1" to = #arrayLen(local.arr)# index = "i">
                <cfset arrayAppend(local.array,local.arr[i])>
                <cfset local.result = local.arr[i]*local.result>
            </cfloop>
        <cfoutput>product of entered elements:#result#
            </cfoutput>
        </cfif>
    </body>
</html>