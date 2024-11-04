<cfscript>
    function multiply(args) {
        var result = 1;
        for (var arg in args) {
            if (isNumeric(arg)) {
                result =result*args;
            } else {
                throw("enter numeric value");
            }
        }
        return result;
    }
</cfscript>
<cfoutput>

    <p>Multiplying 2, 3: #multiply(2, 3)#</p>
    <p>Multiplying 4, 5, 6: #multiply(4, 5, 6)#</p>
    <p>Multiplying 1, 2, 3, 4, 5: #multiply(1, 2, 3, 4, 5)#</p>
    <p>Multiplying 7: #multiply(7)#</p>
</cfoutput>
