<cfcomponent>
    <cffunction  name="factor_finder" access="public" returnType="String">
        <cfargument  name="number" type="String">
            <cfset arr=listToArray(number)>
            <cfset array=[]>
            <cfloop from="1" to=#arrayLen(arr)# index="i">
                <cfif arr[i] mod 3 NEQ 0>
                    <cfcontinue>
                </cfif>
                <cfset arrayAppend(array,arr[i])>
            </cfloop>
            <cfset list=arrayToList(array)>
            <cfreturn list>
    </cffunction>
</cfcomponent>