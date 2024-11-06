<html>
    <head>
        <title>email verification</title>
    </head>
    <body>
        <cfoutput>
            <form method="POST"  enctype="multipart/form-data">
                Name:
                <input type = "text" name = "name" id = "name">
                Email:
                <input type = "email" name = "email" id = "email">
                Message:
                <textarea name = "message" id = "message" ></textarea>
                Upload Image:
                <input type = "file" name = "image" id = "image">
                <input type = "submit" value = "Submit" name="submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.formHandler = createObject("component", "email")>
                <cfset local.result=local.formHandler.sendEmail(form.name,form.email,form.message,form.image)>
            </cfif>
        </cfoutput>
    </body>
</html>
