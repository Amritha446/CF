<cfcomponent>
    <cffunction  name="name">
        <cfset struct=structNew()>
            <cfset struct["currentMonthWord"]=monthAsString(dateFormat(Now(),"mm"))>
                <cfset today=dayofweek(now())>
                <cfif today eq 7>
                    <cfset struct["lastFriday"]=dateformat(dateAdd("d",-1,now()))>
                <cfelse>
                    <cfset struct["lastFriday"]=dateformat(dateAdd ("d",-(1+today),now()))>
                </cfif>
                <cfset diff=daysInMonth(dateFormat(Now(),"mm"))-day(Now())>
                <cfset struct["lastDay"]=DateAdd("d",diff,dateFormat(Now()))>
                <cfset struct["day"]=[]>
                <cfloop from="1" to="5" index="i" >
                    <cfset arrayAppend(struct["day"],DateAdd("d",-i,Now()))>
                </cfloop>
        <cfreturn struct>
    </cffunction>
</cfcomponent>