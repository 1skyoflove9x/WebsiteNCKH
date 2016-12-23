<%@ page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@ page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%! 
Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
	 String dbName = "detainckh";
    String driver = "com.mysql.jdbc.Driver";
    String username = "root"; 
    String userPassword = "0123";

%>
<br><br>
<%

java.util.Date date = new java.util.Date();

String filename = "E:\\f"+date.getTime() +".xls" ;

String  searchText="";
if(request.getParameter("searchtxt")!=null)
 {
	  searchText= request.getParameter("searchtxt").toString();
 }

try{

	 Class.forName(driver).newInstance();
      conn = DriverManager.getConnection(url+dbName,username,userPassword);
      
	   Statement stmt = conn.createStatement();
	  String strQuery = "select * from  dangnhap where HoTenUser like '%"+searchText+"%' or TenDangNhap like '%"+searchText+"%'";
	  
	  
	  ResultSet rs = stmt.executeQuery(strQuery);

   HSSFWorkbook hwb = new HSSFWorkbook();
   HSSFSheet sheet = hwb.createSheet("new sheet");

   

     HSSFRow rowhead = sheet.createRow((short)2);
	 rowhead.createCell((short) 0).setCellValue("HoTenUser");
   rowhead.createCell((short) 1).setCellValue("Email");
    rowhead.createCell((short) 2).setCellValue("TenDangNhap");
   rowhead.createCell((short) 3).setCellValue("MatKhau");
   rowhead.createCell((short) 4).setCellValue("PhanQuyen");
 
  int index=3;
  int sno=0;
  String name="";
while(rs.next()) 
	{
            sno++;
			
 HSSFRow row = sheet.createRow((short)index);
   row.createCell((short) 0).setCellValue(rs.getString(1));
   row.createCell((short) 1).setCellValue(rs.getString(4));
   row.createCell((short) 2).setCellValue(rs.getString(5));
   row.createCell((short) 3).setCellValue(rs.getString(2));
   row.createCell((short) 4).setCellValue(rs.getString(6));
   index++;
	}
   FileOutputStream fileOut = new FileOutputStream(filename);
   hwb.write(fileOut);
   fileOut.close();
   out.println("<b>Your excel file has been generated</b>");
            
        } catch ( Exception ex ) {
        	 out.println("<b>false</b>");
        } 
%>