<cfcomponent>
    <cffunction name="isLoggedIn" access="public" returntype="boolean">
        <cfargument  name="text">
        <cfargument  name="passwordd">
        <cfif structKeyExists(session, "isAuthenticated") and session.isAuthenticated EQ true>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>
    <cffunction name="validateUser" access="public" returntype="boolean">
        <cfargument name="text">
        <cfargument name="passwordd">
        <cfif arguments.text NEQ "" and arguments.passwordd NEQ "">
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

    <cffunction name="authenticateUser" access="public" returntype="void">
        <cfargument name="text">
        <cfargument name="passwordd">
        <cfif validateUser(arguments.text, arguments.passwordd)>
            <cfset session.isAuthenticated = true>
        <cfelse>
            <cfset session.isAuthenticated = false>
        </cfif>
    </cffunction>
    
    <cffunction  name="logOut" access="remote" returntype="void">
        <cfset session.isAuthenticated = false>
        <cflocation url="login.cfm" addToken="no">
    </cffunction>
</cfcomponent>