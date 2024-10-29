<cfoutput>
    <form method="post" name="numberForm">
        Enter the number:
        <input name="num1" type="Number" id="num1" range=1,5>
        <input type="Submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "num1")>
        <cfset num=form.num1>
        <cfset output=createObject("component","number")>
        <cfset result=output.form_data(num)>
        #result#
    </cfif>
</cfoutput>