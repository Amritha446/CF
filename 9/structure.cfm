<html>
    <head>
        <title>structure creation</title>
    </head>
    <body>  
        <form method = "post" name = "struct">
            Enter the key element:
            <input type = "text" name = "text1" >
            Enter the value element:
            <input type = "text" name = "text2" >
            <input type = "submit" value = "sub" name = "submit">
        </form>
        <cfif structKeyExists(form,"submit")>
            <cfset local.output = createObject("component","structure")>
            <cfset local.struct = local.output.formStruct(form.text1,form.text2)>
            <cfif structKeyExists(session.Session,form.text1)>
                can't add
            <cfelse>
                <cfset structAppend(session.Session,local.struct)>
                <cfdump  var = "#session.Session#">
            </cfif>
        </cfif>
         <cfset structDelete(form,"key")>
        <cfset structDelete(form,"value")>
    </body>
</html>