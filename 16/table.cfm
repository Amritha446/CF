<html>
    <head>
        <title>table of data</title>
    </head>
    <body>
        <cfoutput>
            <form method = "post" name = "numberForm">
                number of rows:
                <input name = "num1" type = "number" id = "num1" value = "3">
                number of columns:
                <input name = "num2" type = "number" id = "num2" value = "3">
                <input type = "Submit" value = "Submit" name = "submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.num1 = form.num1>
                <cfset local.num2 = form.num2>
                <cfset local.output = createObject("component","table")>
                <cfset local.result = local.output.table_data(form.num1,form.num2)>
                <cfdump  var = #local.result#>
                <cfloop index = "i" from = "1" to = "#form.num1#">
                    <cfloop index = "j" from = "1" to = "#form.num2#"> 
                        <cfoutput>
                            #local.result[i][j]#
                        </cfoutput>
                    </cfloop><br>
                </cfloop>
            </cfif>
        </cfoutput>
    </body>
</html>