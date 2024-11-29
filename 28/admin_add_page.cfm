<html>
    <head>
        <title>admin add page</title>
        <script src="ajax.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Enter the name to be added:
                <input type="text" name="name" required>
                Enter description
                <input type="textarea" name="description" required>
                <input type="submit" value="submit" name="submit">
                <button type="button" name="btn" onClick="logoutUser()">Log Out</button>
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.saveObj=createObject("component","component.login")>
                <cfset local.result=local.saveObj.savePage(form.name,form.description)>
                #local.result#
            </cfif>
            <cfif structKeyExists(form, "btn")>
                <cfdump  var="var">
                <cflocation  url="admin_login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>