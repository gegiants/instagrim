<%-- 
    Document   : home
    Created on : Oct 6, 2015, 10:01:19 PM
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@page import="uk.ac.dundee.computing.aec.instagrim.servlets.*" %>

<!DOCTYPE html>
<html>
   
    <%
          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
          response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
          response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
          response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
          if(session.getAttribute("LoggedIn")==null)
                   //&& session.getAttribute("authe").equals(true))
          {
          response.sendRedirect(request.getContextPath() +"/login.jsp");
          }
         %>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
          
       
   
          
     <%          
      LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
      //if(session.getAttribute("LoggedIn")!=null)
            if (lg != null) {
                       
                      
                       String UserName = lg.getUsername(); 
                       String name = lg.getFirstName();
                       String surname = lg.getLastName();
            %>
     
           <header>
               
             <h1>InstaGrim !
             </h1>
             <h2>Your world in Black and White &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 Welcome <%=UserName%> <%=name%> <%=surname%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
             </h2>          
           </header>
           <article>
               
           </article>    
           <nav>  
               <form method="POST"  action="Search">
                 Search <input type="text" name="username"><br><br>                   
                <input type="image" src="/Instagrim/images/searchbutton.png" alt="submit" >
               </form>
               <ul>

               
                    <li><a href="upload.jsp">Upload</a></li>
                     <% /*
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername(); */ %>
                               
                          <% // if (lg.getlogedin()) { %>
                     
                     <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                     <li><a href="/Instagrim/myProfile.jsp">Your Profile</a></li>
                     <li><a href="/Instagrim/test.jsp">test</a></li>
                     
               </ul>
               <form action="Logout" method="post">
                   <input type="submit" value="logout" />
               </form>                    
          </nav>      
        <% 
        } 
        %>
                     
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim/home.jsp">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </footer>
            
    </body>
</html>