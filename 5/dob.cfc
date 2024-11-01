<cfcomponent>
    <cffunction  name="age_calc" access="public" returnType="struct">
        <cfset struct=structNew()>
            <cfset struct["ageofson"]=year(now())-year(form.age2)>
            <cfset struct["ageofdelivery"]=year(form.age2)-year(form.age1)>

            <cfset mom1=Dayofyear(form.age1)-dayOfYear(now())>
            <cfif mom1 GTE 0>
                <cfset struct["mom"]=mom1+1>
            <cfelse>
                <cfset struct["mom"]=mom1+366>
            </cfif>
            <cfset child1=Dayofyear(form.age2)-dayOfYear(now())>
            <cfif child1 GTE 0>
                <cfset struct["child"]=child1+1>
            <cfelse>
                <cfset struct["child"]=child1+366>
            </cfif>
        <cfreturn struct>
    </cffunction>
</cfcomponent>