<cfcomponent>
    <cffunction  name = "form" access = "public" returnType = "query">
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
        <cfargument  name = "ph1">
        <cfargument  name = "ph2">
        <cfargument  name = "ph3">
        <cfscript>
            local.myQuery = queryNew("name,age,mail","Varchar,integer,varchar",{name = "#name1#",age = "#age1#",mail = "#mail1#"})
        </cfscript>
        <cfreturn local.myQuery>
    </cffunction>
</cfcomponent>