<cfcomponent>
    <cfset this.sessionManagement="yes">

    <cffunction  name="onSessionStart" >
        <cfset session.Session=structNew()>
     </cffunction>
</cfcomponent>