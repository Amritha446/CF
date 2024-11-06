<html>
    <head>
        <title>structure creation</title>
    </head>
    <body>
        <cfoutput>
            <form method = "post" name = "struct">
                Enter the key element:
                <input type = "text" name = "text1" >
                Enter the value element:
                <input type = "text" name="text2" >
                <input type ="submit" value = "sub" name = "submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.output = createObject("component","struct")>
                <cfset local.struct = local.output.formStruct(form.text1,form.text2)>
                <cfdump  var = "#local.struct#">
            </cfif>
        </cfoutput>
    </body>
</html>
