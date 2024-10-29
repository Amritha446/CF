<cfcomponent>
    <cffunction  name="form_data" access="public" returnType="String">
        <cfargument  name="num" type="numeric">
            <cfif arguments.num EQ 1 or arguments.num EQ 2>
                <cfreturn "ok">
            <cfelseif arguments.num EQ 3>
                <cfreturn "fair">
            <cfelseif arguments.num EQ 4>
                <cfreturn "good">
            <cfelseif arguments.num EQ 5>
                <cfreturn "very good">
            <cfelse>
                <cfreturn " ">
            </cfif>
    </cffunction>
</cfcomponent>