<html>
    <head>
        <title>admin delete page</title>
    </head>
    <body>
        <cfoutput>
             #url.id#
            <cfset local.saveObj=createObject("component","login")>
            <cfset local.result=local.saveObj.deletePage(#url.id#)>
            #local.result#
        </cfoutput>
    </body>
</html>