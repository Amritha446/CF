<cfoutput>
    <form method="post" name="nuberForm">
        number:
        <input name="number" type="Number" id="number" range=1,5>
        <input type="Submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "number")>
        <cfset num=form.number>
        <cfset output=createObject("component","num")>
        <cfset result=output.form_data(num)>
        #result#
    </cfif>
</cfoutput>