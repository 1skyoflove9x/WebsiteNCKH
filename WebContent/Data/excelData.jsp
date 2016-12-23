<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>

<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>

<%@ page import="org.apache.poi.hssf.usermodel.HSSFRow"%>

<%@ page import="org.apache.poi.hssf.usermodel.HSSFCell"%>

        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>update thông tin sinh vien</title>
</head>
<body>

<%!

Connection conn = null;

    String url = "jdbc:mysql://localhost:3306/";

    String dbName = "detainckh";

    String driver = "com.mysql.jdbc.Driver";

    String username = "root";

    String userPassword = "0123";

%>

<%

  int index=3;

  int sno=0;

  String name="";

java.util.Date date = new java.util.Date();

String filename = "c:\\f"+date.getTime()+".xls" ;

String  searchText="";

if(request.getParameter("searchtxt")!=null)

 {

              searchText= request.getParameter("searchtxt").toString();

System.out.println(""+searchText);

}



try{

   HSSFWorkbook hwb = new HSSFWorkbook();

   HSSFSheet sheet = hwb.createSheet("new sheet");

   HSSFRow rowhead = sheet.createRow((short)2);

   rowhead.createCell((short) 0).setCellValue("SNo");

   rowhead.createCell((short) 1).setCellValue("First Name");

   rowhead.createCell((short) 2).setCellValue("Last Name");

   rowhead.createCell((short) 3).setCellValue("Username");

   rowhead.createCell((short) 4).setCellValue("E-mail");

   rowhead.createCell((short) 5).setCellValue("Country");


  Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/detainckh","root","0123");  
  Statement stmt = conn.createStatement();
  String strQuery = "select * from  register where firstname like'%"+searchText+"%' or lastname like '%"+searchText+"%'";
  ResultSet rs = stmt.executeQuery(strQuery);

  while(rs.next()) 

            {
        System.out.println(sno++);

   HSSFRow row = sheet.createRow((short)index);

   row.createCell((short) 0).setCellValue(sno);

   row.createCell((short) 1).setCellValue(rs.getString(1));

   row.createCell((short) 2).setCellValue(rs.getString(2));

   row.createCell((short) 3).setCellValue(rs.getString(3));

   row.createCell((short) 4).setCellValue(rs.getString(4));

   row.createCell((short) 5).setCellValue(rs.getString(5));

   index++;

            }

   FileOutputStream fileOut = new FileOutputStream(filename);

   hwb.write(fileOut);

   fileOut.close();

   out.println("<b>Your excel file has been generated</b>");

           

        } catch ( Exception ex ) {

       

        }

%>
</body>
</html>