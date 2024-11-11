<html>
    <head>
        <title>user_dashboard</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                Enter username:
                <input type="text" name="userName" required>
                Enter password:
                <input type="password" name="password" required>
            </form>
            <table>
                <thead>
                    <tr>
                        <th>name</th>
                        <th>description<th>
                    </tr>
                </thead>
                <tbody>
                    <cfquery name="pagesList" datasource="data_base1">
                        select page_id,page_name,page_description from page1
                    </cfquery>
                    <cfloop query="pagesList">
                        <tr>
                            <td>#page_name#</td>
                            <td>#page_description#</td>
                            <td><a href="admin_edit_page.cfm? id=#page_id#">Edit</a></td>
                            <td><a href="admin_delete_page.cfm? id=#page_id#">Delete</a></td>
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