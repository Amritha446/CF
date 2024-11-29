<cfapplication name = "app" sessionmanagement = "Yes">
<html>
    <head>
        <title>14</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
    </head>
    <body>
        <cfoutput>
            <div class="d-flex flex-column align-items-center">
                <cfimage action="writeToBrowser" source="#session.imageFile#">
                <div><b>Name : </b><span>#session.imagename#</span></div>
               <div><b>Description : </b><span>#session.imageDesc#</span><div>
            </div>
        </cfoutput>
    </body>
<html>