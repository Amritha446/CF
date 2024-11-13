<cfcomponent>
    <cfset this.sessionManagement = "yes">
    <cfset this.name = 'this.name'>
    <cfset this.sessionManagement = true>
    <cfset this.datasource = "database-data_base1">
    <cffunction  name="onRequest" returnType="void">
        <cfargument  name="requestPage" required="true"> 
        <cfset local.excludePages = ["admin_login.cfm","signUp.cfm"]>
        <cfif ArrayContains(local.excludePages,arguments.requestPage)>
        <cfinclude  template="#arguments.requestPage#">
        <cfelseif structKeyExists(session, "login") AND session.login>
            <cfinclude  template="#arguments.requestPage#">
        <cfelse>
            <cfinclude  template="admin_login.cfm">
        </cfif>
    </cffunction>
</cfcomponent>