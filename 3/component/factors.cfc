<cfcomponent>
    <cffunction  name = "factorFinder" access = "public" returnType = "String">
    <cfargument  name = "number" type = "String">
        <cfset local.arr = listToArray(number)>
        <cfset local.array = []>
        <cfloop from = "1" to = #arrayLen(local.arr)# index = "i">
            <cfif local.arr[i] mod 3 NEQ 0>
                <cfcontinue>
            </cfif>
            <cfset arrayAppend(local.array,local.arr[i])>
        </cfloop>
        <cfset local.resultlist = arrayToList(local.array)>
        <cfreturn local.resultlist>
    </cffunction>
</cfcomponent>