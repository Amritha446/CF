<cfcomponent>
    <cffunction  name="form_data" access="public" returnType="String">
        <cfargument  name="num" type="numeric">
            <cfswitch expression=#arguments.num#>
                <cfdefaultcase><cfreturn "undefined"></cfdefaultcase>
                <cfcase  value=1><cfreturn "ok"></cfcase>
                <cfcase  value=2><cfreturn "ok"></cfcase>
                <cfcase  value=3><cfreturn "fair"></cfcase>
                <cfcase  value=4><cfreturn "good"></cfcase>
                <cfcase  value=5><cfreturn "very good"></cfcase>
            </cfswitch>
    </cffunction>
</cfcomponent>