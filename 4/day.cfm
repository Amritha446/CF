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
            <cfset local.output=createObject("component","day")>
            <cfset local.result=local.output.name()>
            <p >current Month in Word: #local.result.currentMonthWord#</p>
            <p >last friday: #local.result.lastFriday#</p>
            <p >last day:#local.result.lastDay#</p>
            <cfloop from = "1" to = "5" index = "i" >
                <cfif dayOfWeek(local.result.day[i]) == 1>
                    <p style = "color:red">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 2>
                    <p style = "color:green">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 3>
                    <p style = "color:orange">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 4>
                    <p style = "color:yellow">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 5>
                    <p style = "color:gray">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 6>
                    <p style = "color:blue">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                <cfelseif dayOfWeek(local.result.day[i]) == 7>
                    <p style = "color:black">#dateFormat(local.result.day[i],"dd-mm-yy-dddd")#</p>
                </cfif>
            </cfloop>    
        </cfoutput>
    </body>
</html>