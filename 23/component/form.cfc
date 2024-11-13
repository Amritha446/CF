<cfcomponent>
    <cffunction  name = "form" access = "public" returnType = "boolean">
        <cfargument  name = "position1">
        <cfargument  name = "relocate">
        <cfargument  name = "date1">
        <cfargument  name = "site1">
        <cfargument  name = "resume1">
        <cfargument  name = "salary1">
        <cfargument  name = "firstNme">
        <cfargument  name = "lastNme">
        <cfargument  name = "mail1">
        <cfargument  name = "p1">
        <cfargument  name = "p2">
        <cfargument  name = "p3">
        <cfset local.phone = arguments.p1 AND arguments.p2 AND arguments.p3> 
        <cfset local.path = expandPath("./assets")>
        <cffile  action="upload" destination="#local.path#" nameConflict="makeUnique">
        <cfset local.val=cffile.clientFile> 
        <cfquery name="addForm" datasource="data_base1">
            insert into formTable(position,relocate,date,site,resume,salary,first_name,last_name,mail,phone_number)
            values(<cfqueryparam value="#arguments.position1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.relocate#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.date1#" cfsqltype="cf_sql_date">,
            <cfqueryparam value="#arguments.site1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#local.val#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.salary1#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#arguments.firstNme#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.lastNme#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.mail1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#local.phone#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        <cfreturn true>
    </cffunction>
</cfcomponent>