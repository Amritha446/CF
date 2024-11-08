<html>
    <head>
        <title>new query</title>
    </head>
    <body>
        <cfoutput>
            <cfset local.obj=createObject("component","newTble")>
            <cfset local.result=local.obj.queryCheck()>
            <cfdump  var="#local.result#">
        </cfoutput>
    </body>
</html>