<cfcomponent>
    <cffunction  name="formFunction" access="public" returnType="struct">
        <cfargument  name="number">
        <cfset struct=structNew()>
        <cfif NOT isNumeric(arguments.number)>
            <p class="true"></p>
        <cfelse>
            <p class="false">Form submitted successfully with number:</p>
            <cfloop from = "1" to="#arguments.number#" index = "i">
                <cfif i%2==0>
                    <p class="false">#i#</p><cfreturn i>
                <cfelse>
                    <p class="true">#i#</p><cfreturn i>
                </cfif>
            </cfloop>
        </cfif>
        <cfreturn struct>
    </cffunction>
</cfcomponent>