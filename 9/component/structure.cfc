<cfcomponent>
    <cffunction  name = "formStruct" access = "public" returnType = "struct">
        <cfargument  name = "key" type = "string">
        <cfargument  name = "value" type = "string">
        <cfset local.struct = structNew()>
        <cfif structKeyExists(session.Session,key)>
            <cfoutput>
                Error!
            </cfoutput> 
            <cfreturn session.Session> 
        <cfelse>
            <cfset local.struct[key]=value>
            <cfreturn local.struct>
        </cfif>
    </cffunction>
</cfcomponent>
