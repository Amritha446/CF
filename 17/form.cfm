
<html>
<head>
    <title>Form Number Validation</title>
    <script>
        function validateForm() {
            var number = document.forms["Form"]["number"].value;
            if (isNaN(number) || number.trim() === "") {
                alert("Please enter a valid number.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <cfoutput>
        <form name="Form" onsubmit="return validateForm()" method="post">
            <label for="number">Enter a number:</label>
            <input type="text" name="number" id="number" required>
            <input type="submit" name="submit" value="submit">
        </form>
        <cfif structKeyExists(form, "submit")>
            <cfset formNumber = form.number>
           <cfif NOT isNumeric(formNumber)>
                <cfoutput><p style="color:red;">" ughjibhh"</p></cfoutput>
            <cfelse>
                <cfoutput>
                    <p style="color:green;">Form submitted successfully with number: #formNumber#</p>
                    <cfloop from="1" to="#formNumber#" index="i">
                        <cfif i%2==0>
                            <p style="color:green;">#i#</p>
                        <cfelse>
                            <p style="color:red;">#i#</p>
                        </cfif>
                    </cfloop>
                </cfoutput>
            </cfif>
            
        </cfif>
    </cfoutput>
</body>
</html>