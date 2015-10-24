<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <% 
          if(session.getAttribute("LoggedIn")!=null)
                   //&& session.getAttribute("authe").equals(true))
          {
          response.sendRedirect(request.getContextPath() +"/index.jsp");
          }
    %>
    <head>
        <title>Instagrim</title>
        
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
          
        <header >
            <div>
            <h1>InstaGrim ! </h1>
            <h2>Your world in Black and Blue </h2>
            </div>
        </header>
        <div class="wrapper"> 
            <article>
                <p>
               <img alt="lake" height="300" width="700" border="0" src="/Instagrim/images/lake.png">
               </p>
            </article>
            <nav>
                <ul>
                    <li><a href="register.jsp">Register</a><br><br></li>
                    <li><a href="login.jsp">Login</a><br><br></li>
                </ul>  
            </nav>
         </div>      
        <footer id="footer">
            <ul>
                <li ><a href="/Instagrim">Home</a><br></li>
                <li>&COPY; Andy C<br></li>
            </ul>
            <br>
        </footer>
            
    </body>
</html>