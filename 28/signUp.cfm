<html>
    <head>
        <title>Sign up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
        
    </head>
    <body>
        <cfoutput>
            <form method="post" name="form">
                Enter User Name:
                <input type = "text" name="text1" >
                <div class="error text-danger" id="textError"></div><br><br>
                <cfset local.objUser=createObject("component","component.login")>
                <cfset local.res=local.objUser.getUser()>
                Role of Designation:
                <select name = "role_id" class = "mt-2" >
                    <option value=""></option>
                    <cfloop query="local.res">
                        <option value=#local.res.role_id#>#local.res.role_name#</option>
                    </cfloop> 
                </select>
                <br><br>
                <div class="error text-danger" id="selectError"></div><br><br>
                Enter Password:
                <input type = "password" name="password1"><br><br>
                <div class="error text-danger" id="passwordError"></div><br><br>
                Confirm Password:
                <input type = "password" name="password2"><br><br>
                <div class="error text-danger" id="passwordError2"></div><br><br>
                <button type = "submit" name="submit" onClick="return validation(event)">Submit</button>
            </form>
            Already have an account? <a href="admin_login.cfm"> Log in</a>
            <cfif structKeyExists(form,"submit")>
                <cfset local.objSignup = createObject("component","component.login")>
                <cfset local.result = local.objSignup.signIn(form.text1,form.role_id,form.password1,form.password2)>
                <cfif local.result=="true"> 
                    <cflocation url="admin_login.cfm" addToken="no">
                <cfelse>
                    <div class="text-danger">Try with another Username, Username should not contain any spaces.</div>
                </cfif>
            <cfelse>
            </cfif>
        </cfoutput>
    </body>
</html>