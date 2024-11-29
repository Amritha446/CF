<html>
    <head>
        <title> delete page</title>
        <script src="ajax.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
    </head>
    <body>
        <cfoutput>
            <cfset local.saveObj=createObject("component","component.login")>
            <cfset local.result=local.saveObj.deletePage(#url.id#)>
            #local.result#
            Result deleted
        </cfoutput>
    </body>
</html>