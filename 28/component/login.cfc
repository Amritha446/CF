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
        <cfset local.encrypted_pass = Hash(#arguments.password#, 'SHA-512')/>
        <cfquery name="qcheck" datasource="data_base1">
            SELECT password
            FROM user1
            WHERE userName = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif qcheck.password EQ "#local.encrypted_pass#">
            <cfquery name="getUser" datasource="data_base1">
                select CustomerID,userName,role from user1 where userName=<cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                AND password=<cfqueryparam value="#local.encrypted_pass#" cfsqltype="cf_sql_varchar">
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

    <cffunction  name="signIn" access="public" returnType="boolean">
        <cfargument  name="text1">
        <cfargument  name="role">
        <cfargument  name="password1">
        <cfargument  name="password2">
        <cfset local.encrypted_pass1 = Hash(arguments.password1, 'SHA-512')/>
        <cfset local.encrypted_pass2 = Hash(arguments.password2, 'SHA-512')/>
        <cfif local.encrypted_pass1 EQ local.encrypted_pass2>
            <cfquery name="insertDetails" datasource="data_base1">
                insert into user1(userName,role,password) values(<cfqueryparam value="#arguments.text1#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.role#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.encrypted_pass1#" cfsqltype="cf_sql_varchar">)
            </cfquery>
            <cfreturn true> 
        <cfelse>
            <cfreturn false>
        </cfif>
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
            INSERT INTO page1 (page_name,page_description) VALUES 
            (<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
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
            page_description=<cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar"> where 
            page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
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