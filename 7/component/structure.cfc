<cfcomponent>
    <cffunction  name = "formStruct" access = "public" returnType = "struct">
        <cfargument  name = "key" type = "string">
        <cfargument  name = "value" type = "string">
        <cfset local.struct = structNew()>
        <cfset local.struct[key] = value>
        <cfreturn local.struct>
    </cffunction>
</cfcomponent>
