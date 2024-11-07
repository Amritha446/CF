
<html>
<head>
    <title>Form Number Validation</title>
    <script>
        function validateForm() {
            var number = document.forms["form"]["number"].value;
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
        <form name = "form" onsubmit="return validateForm()" method="post">
            <label for = "number">Enter a number:</label>
            <input type = "text" name="number" id="number" required>
            <input type = "submit" name = "submit" value = "submit">
        </form>
        <cfif structKeyExists(form, "submit")>
            <cfset local.formNumber = form.number>
           <cfif NOT isNumeric(local.formNumber)>
                <cfoutput><p style = "color:red;"></p></cfoutput>
            <cfelse>
                <cfoutput>
                    <p style="color:green;">Form submitted successfully with number: #local.formNumber#</p>
                    <cfloop from = "1" to="#local.formNumber#" index = "i">
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