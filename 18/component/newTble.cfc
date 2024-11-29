<cfcomponent>
    <cffunction  name="queryCheck" access="public" returnType="query">
        <cfscript>
            local.newQuery1=queryNew("id,name,email","integer,varchar,varchar")
            queryAddRow(local.newQuery1,1)
            querySetCell(local.newQuery1,"id",1,1)
            querySetCell(local.newQuery1,"name","amaritha",1)
            querySetCell(local.newQuery1,"email","pqr",1)
            queryAddRow(local.newQuery1,2)
            querySetCell(local.newQuery1,"id",2,2)
            querySetCell(local.newQuery1,"name","aparna",2)
            querySetCell(local.newQuery1,"email","abcd",2)
            /*queryAddRow(newQuery1,3)
            querySetCell(newQuery1,"id",3,3)
            querySetCell(newQuery1,"name","aparnaa",3)
            querySetCell(newQuery1,"email","abcde",3)*/
        </cfscript>
        <cfreturn local.newQuery1>
    </cffunction>
</cfcomponent>