<cfcomponent>
    <cffunction name="checkEmailExists" access="remote" returntype="boolean" returnFormat="json">
        <cfargument name="email">
        <cfquery name="qCheckEmail" datasource="data_base1">
            SELECT COUNT(*) AS EmailCount
            FROM subscriptions
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn qCheckEmail.EmailCount GT 0>
    </cffunction>
    <cffunction name="insertSubscription" access="remote" returntype="boolean" returnFormat="json">
        <cfargument name="firstName">
        <cfargument name="email">
        <cfquery name="qInsert" datasource="data_base1">
            INSERT INTO subscriptions (first_name, email)
            VALUES (<cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar">, 
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">)
        </cfquery>
        <cfreturn true>
    </cffunction>
</cfcomponent>