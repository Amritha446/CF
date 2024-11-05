<cfcomponent>
    <cffunction  name="table_data" access="public" returnType="array">
        <cfargument  name="num1" type="String">
        <cfargument  name="num2" type="String">
        <cfset array=arrayNew(2)>
        <cfset k=1>
        <cfloop index="i" from="1" to="#num1#">
            <cfloop index="j" from="1" to="#num2#"> 
                <cfset array[j][i]=k>
                <cfset k=k+1>
            </cfloop>
        </cfloop>
        <cfreturn array>
    </cffunction>
</cfcomponent>