<%-- 
    Document   : wpweek7
    Created on : 4 Nov, 2020, 7:35:54 PM
    Author     : Sunanda Mandal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        
        body{
            background-color: lightpink;
            background-size: cover;
        }
        li{
            text-decoration: none;
        }
    </style>
       
    
    
    <body>
        <h1>Details</h1>
        <ul>
           <li><h2>Your First name is <%= request.getParameter("name")%></h2></li>
            <li><h2>Your password  is <%= request.getParameter("pwd1")%></h2></li>
            <li><h2>Your Email is <%= request.getParameter("email")%></h2></li>
            <li><h2>Your Phone number name is <%= request.getParameter("number")%></h2></li>
            <li><h2>Your Address is <%= request.getParameter("address")%></h2></li>
            <li><h2>Your Postal Code is <%= request.getParameter("postalcode")%></h2></li>
            <li><h2>Your Gender is <%= request.getParameter("gender")%></h2></li>
            <li><h2>Your Nationality is <%= request.getParameter("region")%></h2></li>
            <li><h2>Your preferred contact method is <%
                
                String contact[]=request.getParameterValues("Contact");
                for(String s:contact){
            %><li>
                <%=s%>
            </li><%}%>
              </h2></li>
        </ul>
              <table style = "width: 100%">
                <th>|    Username    |</th>
                <th>|    Password    |</th>
                <th>|      Email       |</th>
                <th>|      Number      |</th>
                <th>|    Address    |</th>
                <th>|    Postal Code    |</th>
                <th>|    Gender    |</th>
                <th>|     Preferred Method of Contact    |</th>
                <tr>
                    <td><%= request.getParameter("name") %></td>
                    <td><%= request.getParameter("pwd1") %></td>
                    <td><%= request.getParameter("email") %></td>
                    <td><%= request.getParameter("number") %></td>
                    <td><%= request.getParameter("address") %></td>
                    <td><%= request.getParameter("postal code") %></td>
                    <td><%= request.getParameter("gender") %></td>
                    <td><%= request.getParameter("region") %></td>
                    <td><%
                    String contacts[] = request.getParameterValues("Contact");
                    for(String  s: contacts){
                        %>
                        <li>
                            <%= s%>
                        </li><%
                    }
                    %></td>
                </tr>   
            </table>
    </body>
</html> 