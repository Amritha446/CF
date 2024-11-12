<html>
    <head>
        <title>user_dashboard</title>
    </head>
    <body>
        <cfoutput>
            
            <table>
                <thead>
                    <tr>
                        <th>name</th>
                        <th></th>
                        <th>description<th>
                    </tr>
                </thead>
                <tbody>
                    <cfquery name="pagesList" datasource="data_base1">
                        select page_id,page_name,page_description from page1
                    </cfquery>
                    <cfloop query="pagesList">
                        <tr>
                            <td>#page_name#</td><td></td>
                            <td>#page_description#</td>
                        </tr>
                    </cfloop>
                </tbody>
            </table>
            <a href="home.cfm">Back to login</a>
            <cfif structKeyExists(session,"isAuthenticated")>
                <cflocation url="admin_login.cfm" addToken="no">
                <cfset local.obj=createObject("component","login")>
                <cfset local.pagesList=local.obj.select()>
            </cfif>
        </cfoutput>
    </body>
</html>