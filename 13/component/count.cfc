<cfcomponent>
    <cffunction  name = "counter" access = "public" returnType = "String">
        <cfargument  name = "text1" type = "String">
        <cfset msg = " ">
        <cfif text1 EQ "the">
            <cfset msg = 2>
        <cfelseif text1 EQ "quick">
            <cfset msg = 1>
        <cfelseif text1 EQ "brown">
            <cfset msg = 1>
        <cfelseif text1 EQ "fox">
            <cfset msg = 1>
        <cfelseif text1 EQ "jumps">
            <cfset msg = 1>
        <cfelseif text1 EQ "over">
            <cfset msg = 1>
        <cfelseif text1 EQ "lazy">
            <cfset msg = 1>
        <cfelseif text1 EQ "dog">
            <cfset msg = 1>
        </cfif>
        <cfreturn msg>
    </cffunction>
</cfcomponent>