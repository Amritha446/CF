
<cfcomponent>
    <cffunction name = "sendEmail" access = "public" returntype="void">
        <cfargument name = "name" type = "string" required = "true">
        <cfargument name = "email" type = "string" required="true">
        <cfargument name = "message" type="string" required="true">
        <cfargument name = "file" required="true">
        <cfset local.toEmail = "amritha.ar@techversantinfotech.com">
        <cfset local.subject = "New Form Submission">
        <cfset local.filePath = expandPath("./images")>
        <cffile action="upload" destination="#local.filePath#" nameConflict="MakeUnique">
        <cfset local.img=cffile.clientFile>
        <cfmail to = "#local.toEmail#" from = "#arguments.email#" subject = "#local.subject#" mimeattach="#local.filePath#/#local.img#">
           #arguments.message#
        </cfmail>
    </cffunction>
</cfcomponent>