<html>
    <head>
        <title>captcha generation</title>
    </head>
    <body>
        <cfoutput>
            <form method="post" name="form">
                <cfimage action="captcha" text="abc">
                enter the text:
                <input type="text" name="text">
                enter mailid:
                <input type="email" name="mail">
                <input type="submit" value="submit" name="submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.text1=form.text>
                <cfset local.mail1=form.mail>
                <cfset local.obj=createObject("component","captcha")>
                <cfset local.result=local.obj.captchaCheck(form.text)>
                #local.result#
            </cfif>
        </cfoutput>
    </body>
</html>