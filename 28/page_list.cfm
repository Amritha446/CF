<html>
    <head>
        <title>user_dashboard</title>
        <link href="../../bootstrap/css" rel="stylesheet" >
    </head>
    <body>
        <cfoutput>
            <table>
                <tbody>
                    <cfquery name="pagesList" datasource="data_base1">
                        select page_id,page_name,page_description from page1
                    </cfquery>
                    <cfloop query="pagesList">
                        <div class="ms-5">
                            <button type="button" class="btn btn-info mb-3 mt-2" data-bs-toggle="collapse" data-bs-target="###page_id#">
                                #page_name#
                            </button>
                            <div id="#page_id#" class="collapse">#page_description#</div>
                        </div>
                    </cfloop>
                </tbody>
            </table>
            <div class="ms-5"><a href="home.cfm">Back to login</a></div>
            <cfif structKeyExists(session,"isAuthenticated")>
                <cflocation url="admin_login.cfm" addToken="no">
                <cfset local.obj=createObject("component","component.login")>
                <cfset local.pagesList=local.obj.select()>
            </cfif>
        </cfoutput>
    </body>
</html>