<cfcomponent>
    <cffunction  name="fileRead" access="public" returnType="query">
        <cfset local.arr=[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
            <cfscript>
                local.myQuery1 = queryNew("name,age,Location","Varchar,integer,varchar",local.arr)
            </cfscript>
        <cfreturn local.myQuery1>
    </cffunction>
</cfcomponent>