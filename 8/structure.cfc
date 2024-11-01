<cfcomponent>
    <cffunction  name="form_struct" access="public" returnType="struct">
        <cfargument  name="key" type="string">
        <cfargument  name="value" type="string">
        <cfset struct=structNew()>
        <cfset struct[key]=value>
        
        <cfreturn struct>
    </cffunction>
</cfcomponent>
