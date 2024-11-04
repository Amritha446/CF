<cfcomponent>
    <cffunction  name="counter" access="public" returnType="String">
        <cfargument  name="text1" type="String">
            <cfif text1 EQ "the">
                <cfreturn 2>
            <cfelseif text1 EQ "quick">
                <cfreturn 1>
            <cfelseif text1 EQ "brown">
                <cfreturn 1>
            <cfelseif text1 EQ "fox">
                <cfreturn 1>
            <cfelseif text1 EQ "jumps">
                <cfreturn 1>
            <cfelseif text1 EQ "over">
                <cfreturn 1>
            <cfelseif text1 EQ "lazy">
                <cfreturn 1>
            <cfelseif text1 EQ "dog">
                <cfreturn 1>
            </cfif>
    </cffunction>
</cfcomponent>