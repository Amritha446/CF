<cfoutput>
<html>
    <head>
        <title>multiplying digits</title>
    </head>
    <body>
        <cfset result1 = 0>
        <cfinvoke component = "multiple" method = "multiply" a = "1" b = "2" returnvariable = "result1">
        <p>multiply(1, 2) using cfinvoke: #result1#</p>
        <br>
        <cfobject component = "multiple" name = "multiplyObj">
        <cfset result2 = multiplyObj.multiply(1, 2, 3)>
        <p>multiply(1, 2, 3) using cfobject: #result2#</p>
        <br>
        <cfset multiplyObj2 = createObject("component", "component.multiple")>
        <cfset result3 = multiplyObj2.multiply(1, 2, 3, 4)>
        <p>multiply(1, 2, 3, 4) using createObject: #result3#</p>
    </body>
</html>


</cfoutput>