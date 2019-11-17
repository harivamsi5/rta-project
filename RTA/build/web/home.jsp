<%-- 
    Document   : home
    Created on : 23-Oct-2018, 14:07:58
    Author     : harry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <style>
body {
    background-image: url("image.png");
    background-repeat: no-repeat;
     background-size: 1370px;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <header>
        <h1> WELCOME TO MY HOME PAGE</h1>
        <form>
        <input type="submit" value="signout" formaction="index.html"> 
        </form>
        </header>
    </center>
    <form>
        <ul>
            <li><a class="btnacc" href="Vehicle.html">VEHICLE REGISTRATION</a></li><br>
             <li><a class="btnacc" href="Testdrive.html">TEST DRIVE</a></li><br>
              <li><a class="btnacc" href="Learninglicense.html">LEARNER LICENSE</a></li><br>
               <li><a class="btnacc" href="Drivinglicense.html">DRIVING LICENSE</a></li><br> 
                <li><a class="btnacc" href="Rtoforms.html">RTO FORMS</a></li><br>
               <li><a class="btnacc" href="Help.html">HELP</a></li><br> 
        </ul>       
    </form>
    </body>
</html>
