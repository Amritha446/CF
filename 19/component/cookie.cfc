<cfcomponent>
    <cffunction  name="countCheck" access="public" returnType="string">
        <cfif NOT isDefined("cookie.TimeVisited")>
            <cfcookie name = "TimeVisited" value = 0 httponly = "yes" />
        </cfif>
        <cfif isDefined("form.submit")>
            <cfset cookie.TimeVisited = cookie.TimeVisited+1>
        </cfif>
        <cfreturn "#cookie.TimeVisited#">
    </cffunction>
</cfcomponent>