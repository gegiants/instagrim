<%-- 
    Document   : test
    Created on : Sep 29, 2014, 9:16:48 AM
    Author     : Administrator
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
           if(lg == null)
          //if(session.getAttribute("LoggedIn")==null)
                   //&& session.getAttribute("authe").equals(true))
          {
          response.sendRedirect(request.getContextPath() +"/login.jsp");
          }
         %>
        <h1>Hello World!</h1>
        <%
           
            
            %>
            <article>
                <%
                Iterator<String> citerator;
                java.util.LinkedList<String> CList = new LinkedList<>();
                CList.add("fasgg");
                CList = (java.util.LinkedList<String>) request.getAttribute("Comments");
             
                     if (CList==null){
                      %>   
                     <p>No comments</p>
                      <%  
                     }else{
                           citerator = CList.iterator();
                            while (citerator.hasNext()) {
                                   String c = (String) citerator.next();
                                     %> 
                                    <p><%=c%></p>
                                    <%
                                   } 
                    }
                     
              
                   
                     //ident = UUID.fromString(ide);
                     
                                  %>
            </article>    
    </body>
</html>
