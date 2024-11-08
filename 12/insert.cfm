<html>
    <head>
        <title>insert using sql</title>
    </head>
    <body>
        <cfoutput>
            <form method = "post">
                enter the number of data to be viewed:
                <input type = "number" name="num" >
                <input type = "submit" name="submit">
            </form>
            <cfset local.obj=createObject("component","insert")>
            <cfset local.result=local.obj.insertQuery(form.num)>
            <cfdump var="#local.result#">
        </cfoutput>
    </body>
</html>