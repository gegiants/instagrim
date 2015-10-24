<%-- 
    Document   : myProfile
    Created on : Oct 17, 2015, 12:18:06 PM
    Author     : George
--%>


<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
        <link rel="stylesheet" type="text/css" href="/Instagrim/default.css" />
        <link rel="stylesheet" type="text/css" href="/Instagrim/fonts.css" />
    </head>
    <body>
        <%
        if(session.getAttribute("LoggedIn")==null)
                   //&& session.getAttribute("authe").equals(true))
          {
          response.sendRedirect(request.getContextPath() +"/login.jsp");
          }
        %>
        <% 
          LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");  
          if (lg != null) {
                   //&& session.getAttribute("authe").equals(true))
                      String UserName = lg.getUsername(); 
                       String name = lg.getFirstName();
                       String surname = lg.getLastName();
          
         
         %>
        <header>
        
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
        </header>
        
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/upload.jsp">Upload</a></li>
                <li class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></li>
            </ul>
        </nav>
 
        <article>
            <h1>Your Profile</h1>
            <p>
            <%=UserName%><br><br>
            <%=name%><br><br>
            <%=surname%><br><br>
            </p>
            
            
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim/home.jsp">Home</a></li>
            </ul>
        </footer>
         <%
         }
         %>
    </body>
</html>
