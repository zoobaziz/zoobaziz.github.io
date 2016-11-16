<%--
  Created by IntelliJ IDEA.
  User: neo
  Date: 13/11/16
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>LOGIN PAGE</title>
  </head>
  <body bgcolor="#E6E6FA">

  <div align="center">
      <div style="width:300px;border:solid 1px #333333;" align="left">
          <div style="padding:4px;"><b>Login</b></div>
          <div style="margin:30px">
              <form action="./chatting.jsp">

                  <input type="text" id="name" placeholder="Enter your name here"/><br><br>

                  <input type="password" id="pass" placeholder="Enter your password"/><br><br>

                  <button type="submit" id="login" onclick="login()">LOGIN</button><br><br>

                  <b><i>NOT YET REGISTERED???<br><br></i></b>

                  <a href="register.jsp">Click here</a>

              </form>

          </div>
      </div>
  </div>

  <script type="text/javascript">
      function login()
      {
          var user = document.getElementById("name");
          var pass = document.getElementById("pass");

          document.cookie = "username="+user+"; expires=Thu, 17 Nov 2017 12:00:00 IST";
          document.cookie = "password="+pass+"; expires=Thu, 17 Nov 2017 12:00:00 IST";

          window.location("chatting.jsp");
      }
  </script>
  </body>
</html>
