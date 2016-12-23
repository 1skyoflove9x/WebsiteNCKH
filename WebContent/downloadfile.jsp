<%-- 
    Document   : downloadfile
    Created on : Sep 21, 2013, 1:07:02 PM
    Author     : Deepak
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connectdatabase.MyConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>download file Page!</h1> <br/>
        
        <table border="1">
            <tr><th>Tên File</th><th>Người Upload</th><th>Kiểu File</th><th>Thời Gian Upload</th><th>Mô Tả</th><th>Action</th></tr>
            <%
                ResultSet rs = MyConnection.getResultFromSqlQuery("select doc_id,filename,type, upload_time, upload_by,mota from documents");
                int count =0;
                while(rs.next())
                {
                   out.println("<tr>"
                           + "<td>"+rs.getString(2)+"</td>"
                           + "<td>"+rs.getString(5)+"</td>"
                           + "<td>"+rs.getString(3)+"</td>"
                           + "<td>"+rs.getString(4)+"</td>"
                        	+ "<td>"+rs.getString(6)+"</td>"
                           + "<td><a href='download.jsp?Doc_id="+rs.getInt(1) +"'> Download </a></td>"                                                      
                           + "</tr>");
                   count++;
                }
                rs.close();
                MyConnection.CloseConnection();
                if(count==0)
                {
                    out.println("<tr><td colspan='5'> No File Found..!! </td></tr>");
                }
            %>            
        </table>
        <br/>
        <a href="index4.jsp">Home Page </a>
    </body>
</html>
