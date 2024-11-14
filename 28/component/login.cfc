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
                select CustomerID,userName,role_id from user1 where 
                userName=<cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
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

    <cffunction  name="signIn" access="public" returnType="string">
        <cfargument  name="text1">
        <cfargument  name="role_id">
        <cfargument  name="password1">
        <cfargument  name="password2">
        <cfset local.encrypted_pass1 = Hash(arguments.password1, 'SHA-512')/>
        <cfset local.encrypted_pass2 = Hash(arguments.password2, 'SHA-512')/>
        <cfif local.encrypted_pass1 EQ local.encrypted_pass2>
            <cfif Find(" ", arguments.text1)>
                <cfreturn "Username should not contain any spaces.">
            </cfif>
        
            <cfquery name="checkUser" datasource="data_base1">
                SELECT userName FROM user1 WHERE userName=<cfqueryparam value="#arguments.text1#" cfsqltype="cf_sql_varchar">
            </cfquery>

            <cfif checkUser.RecordCount EQ 0>
                <cfquery name="insertDetails" datasource="data_base1">
                    insert into user1(userName,role_id,password) values(<cfqueryparam value="#arguments.text1#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.role_id#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#local.encrypted_pass1#" cfsqltype="cf_sql_varchar">)
                </cfquery>
                <cfreturn true> 
            <cfelse>
                <cfreturn false>
            </cfif>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

    <cffunction  name="select" access="public" returnType="query">
        <cfargument  name="page_id">
        <cfquery name="pagesList" datasource="data_base1">
            select page_id,page_name,page_description from page where page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
            <cfreturn query>
        </cfquery>
    </cffunction>

    <cffunction  name="description" access="public" returnType="query">
        <cfargument  name="id">
        <cfquery name="pagesList" datasource="data_base1">
            select page_description from page where page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn query>
    </cffunction>

    <cffunction  name="savePage" access="public" returnType="any">
        <cfargument  name="name">
        <cfargument  name="description">
        <cfquery name="checkUser" datasource="data_base1">
            SELECT page_name FROM page WHERE page_name=<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif checkUser.RecordCount EQ 0>
            <cfquery name="pagesList" datasource="data_base1">
                INSERT INTO page (page_name,page_description,CreatedBy) VALUES 
                (<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">)
            </cfquery>
            <cflocation url="admin_dashboard.cfm">
            <cfreturn query>
        <cfelse>
            <cfreturn "page name should be unique">
        </cfif>
    </cffunction>

    <cffunction  name="editPage" access="public" returnType="query">
        <cfargument  name="name">
        <cfargument  name="description">
        <cfargument  name="id">
        <cfquery name="pagesList" datasource="data_base1">
            update page set page_name=<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
            page_description=<cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar"> ,
            UpdatedBy=<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar"> where 
            page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="admin_dashboard.cfm">
        <cfreturn query>
    </cffunction>

    <cffunction  name="deletePage" access="remote" returnType="query">
        <cfargument  name="id">
        <cfquery name="pagesList" datasource="data_base1">
            delete from page where page_id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="admin_dashboard.cfm">
        <cfreturn query>
    </cffunction>

    <cffunction  name="logout" access="remote" return="void">
        <cfset structClear(session)>
        <cfreturn true>
    </cffunction>

    <cffunction  name="getUser" access="public" returnType="query">
        <cfquery name="getUsers" datasource="data_base1">
            select role_id,role_name from role order by role_name
        </cfquery>
        <cfreturn getUsers>
    </cffunction>

</cfcomponent>