<html>
    <head>
        <title>Days</title>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <cfoutput>
            <cfset currentDay=dateFormat(Now(),"dd-mm-yy")>
            todays date:#currentDay#
            <br><br>
            <cfset currentMonth=dateFormat(Now(),"mm")>
            current month:#currentMonth#
            <br>
            <cfset local.output=createObject("component","component.day")>
            <cfset local.result=local.output.name()>
            <p >current Month in Word: #local.result.currentMonthWord#</p>
            <p >last friday: #local.result.lastFriday#</p>
            <p >last day:#local.result.lastDay#</p>
            <cfloop from = "1" to = "5" index = "i" >
                <cfif dayOfWeek(local.result.day[i]) == 1>
                    <p class="a">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 2>
                    <p class="b">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 3>
                    <p class="c">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 4>
                    <p class="d">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 5>
                    <p class="e">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 6>
                    <p class="f">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 7>
                    <p class="g">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                </cfif>
            </cfloop>    
        </cfoutput>
    </body>
</html>