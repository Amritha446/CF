<cfcomponent>
    <cffunction  name="formData" access="public" returnType = "String">
        <cfargument  name="num" type = "numeric">
        <cfset local.msg = " ">
        <cfswitch expression=#arguments.num#>
            <cfcase  value = 1>
                <cfset local.msg = "ok">
            </cfcase>
            <cfcase  value = 2>
                <cfset local.msg = "ok">
            </cfcase>
            <cfcase  value = 3>
                <cfset local.msg = "fair">
            </cfcase>
            <cfcase  value = 4>
                <cfset local.msg = "good">
            </cfcase>
            <cfcase  value = 5>
                <cfset local.msg = "very good">
            </cfcase>
            <cfdefaultcase>
                <cfset local.msg = "undefined">
            </cfdefaultcase>
        </cfswitch>
        <cfreturn local.msg>
    </cffunction>
</cfcomponent>