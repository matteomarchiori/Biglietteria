<%-- 
    Document   : register
    Created on : 8-apr-2016, 12.32.06
    Author     : matteo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String pwd = request.getParameter("password");
            String email = request.getParameter("email");
        %>
        <a href="./registrazioneAvvenuta?email=<%=email%>&password=<%=pwd%>">esegui</a>
        
        Dopo : ${v.mail} ${v.password}
        <%=email%></br><%=pwd%>
    </body>
</html>
