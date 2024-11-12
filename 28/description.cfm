<html>
    <head>
        <title>description page</title>
    </head>
    <body>
        <cfoutput>
            hlo
            <cfset local.obj=createObject("component","login")>
            <cfset local.pagesList=local.obj.description(#url.id#)>
            #local.pagesList#
        </cfoutput>
    </body>
</html>