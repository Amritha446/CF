<html>
    <head>
        <title>Multiplying parameters</title>
    </head>
    <body>
        <form method="post" name="multiply">
        enter the digits:
        <input type="number" name="num" id="num">
        <input type="submit" value="submit">
        </form>
        <cfif structKeyExists(form,"num")>
            <cfset num1=form.num>
            <cfset arr=listToArray(num1,"")>
            <cfset result=1>
            <cfset array=[]>
            <cfloop from="1" to=#arrayLen(arr)# index="i">
                <cfset arrayAppend(array,arr[i])>
                <cfset result=arr[i]*result>
            </cfloop>
        </cfif>
        <cfoutput>product of entered elements:#result#
            </cfoutput>
    </body>
</html>