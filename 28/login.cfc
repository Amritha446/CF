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
        <cfquery name="qcheck" datasource="data_base1">
            SELECT password
            FROM user1
            WHERE name = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif qcheck.password EQ "#arguments.password#">
            <cfquery name="getUser" datasource="data_base1">
                select id,name,role from user1 where name=<cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                AND password=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfif getUser.recordCount GT 0>
                <cfset session.userId = "getUser.id">
                <cfset session.userRole= "getUser.role">
                <cfreturn true>
            </cfif>
        <cfelse>
            <cfreturn false>
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

    <cffunction  name="description" access="public" returnType="query">
        <cfargument  name="id">
        <cfquery name="pagesList" datasource="data_base1">
            select page_description from page1 where page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn query>
    </cffunction>

    <cffunction  name="savePage" access="public" returnType="query">
        <cfargument  name="name">
        <cfargument  name="description">
        <cfquery name="pagesList" datasource="data_base1">
            INSERT INTO page1 (page_name,page_description) VALUES (<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">)
        </cfquery>
        <cflocation url="admin_dashboard.cfm">
        <cfreturn query>
    </cffunction>

    <cffunction  name="editPage" access="public" returnType="query">
        <cfargument  name="name">
        <cfargument  name="description">
        <cfargument  name="id">
        <cfquery name="pagesList" datasource="data_base1">
            update page1 set page_name=<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
            page_description=<cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar"> where page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="admin_dashboard.cfm">
        <cfreturn query>
    </cffunction>

    <cffunction  name="deletePage" access="public" returnType="query">
        <cfargument  name="id">
        <cfquery name="pagesList" datasource="data_base1">
            delete from page1 where page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="admin_dashboard.cfm">
        <cfreturn query>
    </cffunction>
</cfcomponent>