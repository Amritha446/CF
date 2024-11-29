<cfcomponent>
    <cffunction  name="formFunction" access="public" returnType="array">
        <cfargument  name="number">
        <cfset struct=structNew()>
        <cfset local.arr=[]>
        <cfif NOT isNumeric(arguments.number)>
            <p class="true"></p>
        <cfelse>
            <p class="false">Form submitted successfully with number:</p>
            <cfloop from = "1" to="#arguments.number#" index = "i">
                <cfif i%2==0>
                   <cfset arrayAppend(local.arr,'<p class="false">#i#</p>')>
                <cfelse>
                    <cfset arrayAppend(local.arr,'<p class="true">#i#</p>')>
                </cfif>
            </cfloop>
        </cfif>
        <cfreturn local.arr>
    </cffunction>
</cfcomponent>