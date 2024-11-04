<html>
    <head>
        <title>multiplication</tiltle>
        <script>
            function multiply(){
                var number = document.forms["digit"]["num"].value;
                var result=result*number;
                return result;
            }
        </script>
    </head>
    <body>
        <cfoutput>
            <form method="post" name="digit">
                Enter the digits:
                <input name="num" type="number" value="num">
                <input type="Submit" value="Submit">
            </form>
            <cfif structKeyExists(form, "Submit")>
                <cfset number=form.num>
                #number#
            </cfif>
        </cfoutput>
    </body>
</html>