<cfcomponent>
    <cffunction  name="form_struct" access="public" returnType="struct">
        <cfargument  name="key" type="string">
        <cfargument  name="value" type="string">
        <cfset struct=structNew()>
        <cfif structKeyExists(session.Session,key)>
            <cfoutput>
                Error!
            </cfoutput> 
            <cfreturn session.Session> 
        <cfelse>
            <cfset struct[key]=value>
            <cfreturn struct>
        </cfif>
       
    </cffunction>
</cfcomponent>
