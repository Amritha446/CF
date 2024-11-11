<cfcomponent>
    <cffunction  name="isAuthenticated" access="public" returnType="boolean">
        <cfargument name="userName">
        <cfargument name="password">
        <cfif validateLogin(arguments.userName, arguments.password)>
            <cfset session.isAuthenticated = true>
        <cfelse>
            <cfset session.isAuthenticated = false>
        </cfif>
        <cfreturn session.isAuthenticated>
    </cffunction>

    <cffunction name="validateLogin" access="public" returnType="boolean">
        <cfargument  name="userName">
        <cfargument  name="password">
        <cfquery name="getUser" datasource="data_base1">
            select id,name,role from user1 where name=<cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
            AND password=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif getUser.recordCount GT 0>
            <cfset session.userId = "getUser.id">
            <cfset session.userRole= "getUser.role">
            <cfreturn true>
        </cfif>
        <cfreturn false>
    </cffunction>

    <cffunction  name="logOut" access="public" returnType="void">
        <cfset session.userId = "">
        <cfset session.userRole = "">
    </cffunction>

    <cffunction  name="select" access="public" returnType="query">
        <cfquery name="pagesList" datasource="data_base1">
            select page_id,page_name,page_description from page1
            <cfreturn query>
        </cfquery>
    </cffunction>

    <cffunction  name="savePage" access="public" returnType="query">
        <cfquery name="pagesList" datasource="data_base1">
            insert into page1(page_name,page_description) values(<cfqueryparam value="#form.name#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#form.name#" cfsqltype="cf_sql_varchar">)
        </cfquery>
        <cfset rediredt("admin_dashboard.cfm")>
        <cfreturn query>
    </cffunction>
</cfcomponent>