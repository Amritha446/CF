<html>
    <head>
        <title>user_dashboard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" ></script>
    </head>
    <body>
        <cfoutput> 
            <form method="post">
                <table>
                    <tbody>
                        <cfquery name="pagesList" datasource="data_base1">
                            select page_id,page_name,page_description from page
                        </cfquery>
                        <cfloop query="pagesList">
                            <div class="ms-5">
                                <button type="button" class="btn btn-info mb-3 mt-2" data-bs-toggle="collapse" data-bs-target="###page_id#">
                                    #page_name#
                                </button>
                                <div id="#page_id#" class="collapse">#page_description#</div>
                                <a href="admin_edit_page.cfm?id=#page_id#">Edit</a>
                                <button type="button" name="btn" onClick="deletePage(#page_id#)">Delete</a>
                            </div>
                        </cfloop>
                    </tbody>
                </table> 
                <div class="ms-5"><a href="admin_add_page.cfm">Add New Page</a></div>
                <button type="submit" name="btn" onClick="return logoutUser()">Log Out</button>
            </form>
            <cfif structKeyExists(session,"isAuthenticated")>
                <cflocation url="admin_login.cfm" addToken="no">
                <cfset local.obj=createObject("component","component.login")>
                <cfset local.pagesList=local.obj.select(#page_id#)>
            </cfif>
            <cfif structKeyExists(form, "btn")>
                <cfdump  var="var">
                <cflocation  url="admin_login.cfm">
            </cfif>
            <script src="ajax.js"></script>
        </cfoutput>
    </body>
</html>