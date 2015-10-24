<%-- 
    Document   : newComment
    Created on : Oct 22, 2015, 6:59:35 PM
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@page import="uk.ac.dundee.computing.aec.instagrim.servlets.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Comment!</h1>
        
        <%          
      LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
      //if(session.getAttribute("LoggedIn")!=null)
            if (lg != null) {
                       
                      
                       String UserName = lg.getUsername(); 
                       String name = lg.getFirstName();
                       String surname = lg.getLastName();
                       String piccid = request.getParameter("picid"); ;
            
            %>
           <form method="POST"  action="CommentHandler" >      
                        New comment <input type="text" name="comment"><br><br>
                        <input type="hidden" name="picid" value="<%=piccid%>">
                        <input type="submit" value="Post"><br><br> 
               </form>
        
             <% 
            }
            %>
    </body>
</html>
