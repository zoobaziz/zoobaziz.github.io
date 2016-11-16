<%--
  Created by IntelliJ IDEA.
  User: neo
  Date: 13/11/16
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chats</title>
</head>
<body>

<h1>PLEASE WAIT WHILE WE REDIRECT YOU TO THE NEXT PAGE</h1>
<%@page import="java.sql.*"%>
<% String user =null, password=null; %>
<%
    Cookie[] ck = request.getCookies();

    if(ck != null)
    {
        for(int i=0; i<ck.length; i++)
        {
            Cookie cookie = ck[i];
            String usern = cookie.getName();
            if (usern.equals("username"))
                user = cookie.getValue();
            if (usern.equals("password"))
                password = cookie.getValue();
        }
    }

    if (!user.equals("") && !password.equals(""))
    {
        try
        {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/IM", "root", "root");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from users where username="+user);
            if (rs != null)
            {
                %>
                    <script type="text/javascript">
                        window.location="chat.jsp";
                    </script>
                <%
            }
            else
            {
                %>
                    <b>NO RECORDS FOUND!!!</b>
                    <br><br>
                    <a href="index.jsp">GO BACK</a> AND ENTER VALID USERNAME AND PASSWORD<br><br>
                <%
            }
        }
        catch (Exception e)
        {
            out.print(e);
        }
    }

    else
            {
                %>
                    <script type="text/javascript">
                        alert("NO USER NAME AND PASSWORD HAS BEEN INPUT");
                    </script>
                <%
            }
%>


</body>
</html>
