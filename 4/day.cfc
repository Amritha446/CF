<cfcomponent>
    <cffunction  name = "name">
        <cfset local.struct = structNew()>
        <cfset local.struct["currentMonthWord"] = monthAsString(dateFormat(Now(),"mm"))>
        <cfset local.today = dayofweek(now())>
        <cfif local.today EQ 7>
            <cfset local.struct["lastFriday"] = dateformat(dateAdd("d",-1,now()))>
        <cfelse>
            <cfset local.struct["lastFriday"] = dateformat(dateAdd ("d",-(1+today),now()))>
        </cfif>
        <cfset local.diff = daysInMonth(dateFormat(Now(),"mm"))-day(Now())>
        <cfset local.struct["lastDay"] = DateAdd("d",local.diff,dateFormat(Now()))>
        <cfset local.struct["day"] = []>
        <cfloop from = "1" to = "5" index = "i" >
            <cfset arrayAppend(local.struct["day"],DateAdd("d",-i,Now()))>
        </cfloop>
        <cfreturn local.struct>
    </cffunction>
</cfcomponent>