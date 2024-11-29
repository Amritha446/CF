<cfoutput>
    <form method = "post" name = "numberForm">
        Enter the number:
        <input name="num1" type="Number" id="num1" range=1,5>
        <input type="Submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "num1")>
        <cfset local.num = form.num1>
        <cfset local.output = createObject("component","component.number")>
        <cfset local.result = local.output.formData(local.num)>
        #local.result#
    </cfif>
</cfoutput>