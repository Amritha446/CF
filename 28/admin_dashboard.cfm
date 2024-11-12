<html>
    <head>
        <title>user_dashboard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <cfoutput> 
            <table>
                <tbody>
                    <cfquery name="pagesList" datasource="data_base1">
                        select page_id,page_name,page_description from page1
                    </cfquery>
                    <cfloop query="pagesList">
                        <!---<div class="description">
                            <div class="button" data-toggle="collapse" data-target="#collapseExample#">
                                <button type="button" value="button">button</button>
                            </div>
                            <div class="collapse" id="collapseExample">
                            <a href="description.cfm?id=#page_id#">#page_name#</a><br>
                                #page_description#
                            </div>
                        </div>--->
                        <tr>
                            <td><a href="description.cfm?id=#page_id#">#page_name#</a></td><td></td>
                            <td>#page_description#</td>
                            <td><a href="admin_edit_page.cfm?id=#page_id#">Edit</a></td><td></td>
                            <td><a href="admin_delete_page.cfm?id=#page_id#">Delete</a></td><br>
                        </tr>
                    </cfloop>
                </tbody>
            </table>
            <a href="admin_add_page.cfm">Add New Page</a>
            <cfif structKeyExists(session,"isAuthenticated")>
                <cflocation url="admin_login.cfm" addToken="no">
                <cfset local.obj=createObject("component","login")>
                <cfset local.pagesList=local.obj.select()>
            </cfif>
        </cfoutput>
    </body>
</html>