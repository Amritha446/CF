<cfcomponent>
    <cffunction  name="multiplyNum" access="public" returnType="string">
        <cfargument  name="num">
        <cfset local.arr = listToArray(num,"")>
            <cfset local.result = 1>
            <cfset local.array = []>
            <cfloop from = "1" to = #arrayLen(local.arr)# index = "i">
                <cfset arrayAppend(local.array,local.arr[i])>
                <cfset local.result = local.arr[i]*local.result>
            </cfloop>
            <cfreturn local.result>
    </cffunction>
</cfcomponent>