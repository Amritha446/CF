<cfcomponent>
    <cffunction  name="insertQuery" access="public" returnType="any">
        <cfargument  name="num">
        <cfquery name = "table" datasource = "data_base1" result="result" fetchclientinfo="yes" >
            <!---create table employee(first_name varchar(10),last_name varchar(10))
            select * from employee
            insert into employee values('a','b')
            <cfloop query = "table">
                #first_name# #last_name#
            </cfloop> --->
            select first_name,last_name from employee
        </cfquery> 
        <cfset local.data = QueryGetRow(table,"#arguments.num#")>
        <cfreturn local.data>
    </cffunction>
</cfcomponent>