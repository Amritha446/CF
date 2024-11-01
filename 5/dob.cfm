<html>
    <head>
        <title>age calculation</title>
    </head>
    <body>
        <cfoutput>
            <form method="post" name="struct_form">
                Enter the dob of mother:
                <input type="date" name="age1" >
                Enter the dob of child:
                <input type="date" name="age2" >
                <input type ="submit" value="sub">
            </form>
            <cfif structKeyExists(form,"age1" ) && structKeyExists(form,"age2" )>
                <cfset output=createObject("component","dob")>
                <cfset result=output.age_calc(form.age1,form.age2)>
                <p >age of delivery: #result.ageofdelivery#</p>
                <p >age of son: #result.ageofson#</p>
                <p>days left for mothers bday:#result.mom#</p>
                <p>days left for child bday:#result.child#</p>
            </cfif>
         </cfoutput>
    </body>
</html>