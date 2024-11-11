<cfcomponent>
    <cffunction  name = "form" access = "public" returnType = "boolean">
        <cfargument  name = "position1">
        <cfargument  name = "relocate11">
        <cfargument  name = "relocate22">
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
        <cfset local.val=cffile.clientFile> 
        <cfquery name="addForm" datasource="data_base1">
            insert into form values(<cfqueryparam value="#arguments.position1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.relocate11#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.relocate22#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.date1#" cfsqltype="cf_sql_date">,
            <cfqueryparam value="#arguments.site1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.resume1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#local.val#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#arguments.firstNme#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.lastNme#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.mail1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.p1#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.p2#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.p3#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        <cfreturn true>
    </cffunction>
</cfcomponent>