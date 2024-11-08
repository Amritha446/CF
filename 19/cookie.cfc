<cfcomponent>
    <cffunction  name="countCheck" access="public" returnType="any">
        <cfif NOT isDefined("cookie.TimeVisited")>
            <cfcookie name = "TimeVisited" value = 0 expires = 30 httponly = "yes" />
        </cfif>
        <cfif isDefined("form.submit")>
            <cfset cookie.TimeVisited = cookie.TimeVisited+1>
            <cflocation url="cookie.cfm">
        </cfif>
        <cfreturn "#cookie.TimeVisited#">
    </cffunction>
</cfcomponent>