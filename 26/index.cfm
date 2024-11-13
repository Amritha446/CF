<html>
    <head>
        <title>index page</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Input text here:
                <input type="file" name="file" required>
                <input type="submit" name="submit" value="submit">
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset local.tagObj = createObject("component","component.tagCloud")>
                <cfset local.result = local.tagObj.inputFunction(form.file)>
                <cffile action="read" file="#expandPath("./assets/text1.txt")#" variable="local.myFile">
                <cfset local.objCountWords = CreateObject('component', 'tagcloud')>
                <cfset local.wordCount = local.objCountWords.inputFunction(local.myFile)>
                <cfdump var = "#local.wordCount#">
            </cfif>
        </cfoutput>
    </body>
</html>