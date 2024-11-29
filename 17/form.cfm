
<html>
<head>
    <title>Form Number Validation</title>
    <link href="style/style.css" rel="stylesheet">
    <script src="js/script.js"></script>
</head>
<body>
    <cfoutput>
        <form name = "form" onsubmit="return validateForm()" method="post">
            <label for = "number">Enter a number:</label>
            <input type = "text" name="number" id="number" required>
            <input type = "submit" name = "submit" value = "submit">
        </form>
        <cfif structKeyExists(form, "submit")>
            <cfset local.obj=createObject("component","component.form")>
            <cfset local.result=local.obj.formFunction(form.number)>
            <cfloop array="#local.result#" item="item">
                #item#
            </cfloop>
        </cfif>
    </cfoutput>
</body>
</html>