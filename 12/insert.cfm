<html>
    <head>
        <title>insert using sql</title>
    </head>
    <body>
        <cfoutput>
            <form method="post">
                enter the number of data to be viewed:
                <input type="number" name="num" value="num">
                <input type="submit" name="submit">
            </form>
        </cfoutput>
        <cfquery name = "table" datasource = "data_base1" result="result" fetchclientinfo="yes" >
            <!---create table employee(first_name varchar(10),last_name varchar(10))
            select * from employee
            insert into employee values('a','b')
            <cfloop query = "table">
            #first_name# #last_name# 
        </cfloop>--->
            select * from employee
        </cfquery> 
        <cfoutput>
            <cfset local.data = QueryGetRow(table,form.num)>
            <cfdump var="#local.data#">
        </cfoutput>
    </body>
</html>