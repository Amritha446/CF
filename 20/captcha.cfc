<cfcomponent>
    <cffunction  name="captchaCheck" access="public" returnType="string">
        <cfargument  name="text1">
        <cfif arguments.text1 is "abc">
            <cfreturn "email is successsfully validated">
        <cfelse>
            <cfreturn "invalid captcha">
        </cfif>
    </cffunction>
</cfcomponent>