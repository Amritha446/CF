<html>
    <head>
        <title>structure creation</title>
    </head>
    <body>
        
        <form method="post" name="struct_form">
            Enter the key element:
            <input type="text" name="text1" >
            Enter the value element:
            <input type="text" name="text2" >
            <input type ="submit" value="sub" name="submit">
        </form>
        <cfif structKeyExists(form,"submit")>
            
            <cfset output=createObject("component","struct")>
            <cfset struct=output.form_struct(form.text1,form.text2)>
            <cfdump  var="#struct#">
        </cfif>
        
    </body>
</html>
<!---<cfset key=form.text1>
            <cfset value=form.text2>
            <cfset struct[key]=value>--->