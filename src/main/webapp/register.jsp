<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <link rel="stylesheet" type="text/css" href="default.css" />
        <link rel="stylesheet" type="text/css" href="fonts.css" />
    </head>
    <body>
        <header>
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
        </header>
        <div class="wrapper">
        <nav>
            <ol>
                
                <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
            </ol>
        </nav>
       
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">

                <ul>
                    <li>User Name <input type="text" name="username"><br><br></li>  
                    <li>Password <input type="password" name="password"><br><br></li>
                    <li>First name <input type="text" name="first name"><br><br></li>
                    <li>Last name <input type="text" name="last name"><br><br></li>
                    <li>E-mail <input type="text" name="e-mail"><br><br></li>
                </ul>
                <br/>
                <input type="submit" value="Register now"> 
            </form>

        </article>
        </div>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
