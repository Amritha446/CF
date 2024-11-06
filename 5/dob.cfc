<cfcomponent>
    <cffunction  name = "ageCalculation" access = "public" returnType = "struct">
        <cfset local.struct = structNew()>
        <cfset local.struct["ageOfSon"] = year(now())-year(form.age2)>
        <cfset local.struct["ageOfDelivery"] = year(form.age2)-year(form.age1)>
        <cfset local.mom1 = Dayofyear(form.age1)-dayOfYear(now())>
        <cfif mom1 GTE 0>
            <cfset local.struct["mom"] = mom1+1>
        <cfelse>
            <cfset local.struct["mom"] = mom1+366>
        </cfif>
        <cfset child1 = Dayofyear(form.age2)-dayOfYear(now())>
        <cfif child1 GTE 0>
            <cfset local.struct["child"] = child1+1>
        <cfelse>
            <cfset local.struct["child"] = child1+366>
        </cfif>
        <cfreturn local.struct>
    </cffunction>
</cfcomponent>