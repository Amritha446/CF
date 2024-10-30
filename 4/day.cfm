<html>
    <head>
        <title>Days</title>
        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <cfoutput>
                <cfset currentDay=dateFormat(Now(),"dd-mm-yy")>
                todays date:#currentDay#
                <br><br>
                <cfset currentMonth=dateFormat(Now(),"mm")>
                current month:#currentMonth#
                <br>
                <cfset output=createObject("component","day")>
                <cfset result=output.name()>
                <p >current Month in Word: #result.currentMonthWord#</p>
                <p >last friday: #result.lastFriday#</p>
                <p >last day:#result.lastDay#</p>
                <cfloop from="1" to="5" index="i" >
                    <cfif dayOfWeek(result.day[i])==1>
                        <p style="color:red">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==2>
                        <p style="color:green">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==3>
                        <p style="color:orange">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==4>
                        <p style="color:yellow">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==5>
                        <p style="color:gray">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==6>
                        <p style="color:blue">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==7>
                        <p style="color:black">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    </cfif>
                </cfloop>
                
        </cfoutput>
    </body>
</html>