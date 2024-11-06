<cfoutput>
    <form method="post" name="nuberForm">
        number:
        <input name="number" type="Number" id="number" range=1,5>
        <input type="Submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "number")>
        <cfset local.num=form.number>
        <cfset local.output=createObject("component","num")>
        <cfset local.result=local.output.formData(local.num)>
        #local.result#
    </cfif>
</cfoutput>