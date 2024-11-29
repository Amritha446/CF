<html>
    <head>
        <title>age calculation</title>
    </head>
    <body>
        <cfoutput>
            <form method = "post" name = "struct">
                Enter the dob of mother:
                <input type = "date" name = "age1" >
                Enter the dob of child:
                <input type = "date" name = "age2" >
                <input type = "submit" value= "sub">
            </form>
            <cfif structKeyExists(form,"age1" ) && structKeyExists(form,"age2" )>
                <cfset local.output = createObject("component","component.dob")>
                <cfset local.result = local.output.ageCalculation(form.age1,form.age2)>
                <p >age of delivery: #local.result.ageOfDelivery#</p>
                <p >age of son: #local.result.ageOfSon#</p>
                <p>days left for mothers bday:#local.result.mom#</p>
                <p>days left for child bday:#local.result.child#</p>
            </cfif>
         </cfoutput>
    </body>
</html>