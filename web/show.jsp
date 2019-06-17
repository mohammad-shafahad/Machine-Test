<%-- 
    Document   : show
    Created on : Jun 17, 2019, 1:09:56 PM
    Author     : sam
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DBManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Data</title>
    </head>
    <body>
         <form>
           
                    <h1 style="text-align: center;color: navy;">User Information</h1>
                    <br/>
                    <table border="1" style="width: 95%;margin: 0 auto;">
                        <tr>
                            <th>Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>DOB</th>                           
                            <th>Mobile</th>                            
                            <th>Designation</th>
                            <th>Gender</th>
                            <th>Hobbies</th>
                         
                          </tr>
                        <%
                        String q="select * from userinfo";
                        DBManager db=new DBManager();
                        ResultSet rs=db.selectQuery(q);
                        int n=1;
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=n %></td>
                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>     
                            <td><%=rs.getString(4) %></td>                           
                            <td><%=rs.getString(5) %></td>  
                            <td><%=rs.getString(6) %></td>  
                            <td><%=rs.getString(7) %></td>  
                            <td><%=rs.getString(8) %></td>                            
                            

                        </tr>
                        <%
                            n++;
                           }
                        %>
                    </table>
               
        </form>
                    <a href="index.html"> <h2 style="text-align: center;color: navy;">HomePage</h2> </a>  
    </body>
</html>
