<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
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
           LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
           if(lg == null)
          //if(session.getAttribute("LoggedIn")==null)
                   //&& session.getAttribute("authe").equals(true))
          {
          response.sendRedirect(request.getContextPath() +"/login.jsp");
          }
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
            <h1>Pictures</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            
            java.util.LinkedList<String> CList = new LinkedList<>();
                    
            Iterator<String> citerator;
            
            //String author;
           // String ide;
            //java.util.UUID ident;
            String ide = "a";
            
            
            String picid;
            while (iterator.hasNext()) {
            Pic p = (Pic) iterator.next();
             %>
                     <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/>
             <%
                       
             //CList.add("fafsa");
             picid=p.getSUUID();
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
                     
                     ide = p.getSUUID().toString();
                   
                     //ident = UUID.fromString(ide);
                     
                                  %>
                    <p><a  href="/Instagrim/newComment.jsp?picid=<%=ide%>" style="color: blue"> comment </a></p><br>              
        
                    
        <%
            }%>
            
        <%}
        %>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim/home.jsp">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
