
<html>
<head>
    <title>Form Number Validation</title>
    <link href="style/style.css" rel="stylesheet">
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
            <cfset local.obj=createObject("component","form")>
            <cfset local.result=local.obj.formFunction(local.formNumber)>
            
            #local.result#
        </cfif>
    </cfoutput>
</body>
</html>