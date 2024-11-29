<cfcomponent>
    <cffunction  name="inputFunction" access="public" returnType="struct">
        <cfargument  name="text">
        <cfset local.struct=structNew("ordered")>
        <cfset local.array = listToArray(arguments.text," ")>
        <cfloop array="#local.array#" index="item">
            <cfif len("#item#") GT 3>
                <cfquery name = "check" datasource="data_base1">
                    SELECT COUNT(*) AS TextCount FROM table1
                    WHERE text = <cfqueryparam value="#arguments.text#" cfsqltype="cf_sql_varchar">
                </cfquery>
                <cfif check.TextCount EQ 0>
                    <cfquery name="words" datasource="data_base1">
                        insert into table1(text) values(<cfqueryparam value="#item#" cfsqltype="cf_sql_varchar">)
                    </cfquery>
                </cfif>
                <cfif structKeyExists(struct,"#item#")>
                    <cfset local.struct[item] += 1>
                <cfelse>
                    <cfset local.struct[item] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.mystruct=structSort(struct,"numeric","desc")>
        <cfset local.struct1=structNew("ordered")>
        <cfloop array="#local.mystruct#" item="item">
           <cfset local.struct1[item] = local.struct[item]>
        </cfloop>
        <cfreturn local.struct1>
    </cffunction>
</cfcomponent>