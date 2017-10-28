<%-- 
    Document   : logout
    Created on : 24/05/2017, 12:33:29 PM
    Author     : Luisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.html");
         %>
    </body>
</html>
