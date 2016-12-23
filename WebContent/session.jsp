<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="ThuVien/css/Main.css"/>
  <link rel="stylesheet" type="text/css" href="ThuVien/css/bootstrap.css"/>
    <script src="ThuVien/Jquery/jquery-1.11.3.min.js"></script>
     <script src="ThuVien/Js/bootstrap.min.js"></script>
    <script src="ThuVien/Jquery/jquery.bootstrap-autohidingnavbar.js"></script>
<script src="ThuVien/Jquery/jquery.validate.min.js"></script> 
<script type="text/javascript" src="ThuVien/Jquery/localization/messages_vi.js"></script>
<script src="ThuVien/Js/script.js"></script>
   <link rel="stylesheet" type="text/css" href="ThuVien/css/jquery.dataTables.css"/>  
           <script type="text/javascript" src="ThuVien/Jquery/jquery.dataTables.js"></script> 
<title>update thông tin sinh vien</title>
</head>
<body>
<property name="hibernate.connection.useUnicode"
value="true" />
<property name="hibernate.connection.characterEncoding"
value="UTF-8" />
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"
			     user="root"  password="0123"/>
			 
 
 <% request.setCharacterEncoding("UTF-8");
%>
			  <%  
			  out.println("<html><head>");
			  out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
			  out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"ThuVien/css/Main.css\">");
			  out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"ThuVien/css/bootstrap.css\">");
			  out.println("<script src=\"ThuVien/Jquery/jquery-1.11.3.min.js\">");
			  out.println("<script src=\"ThuVien/Js/bootstrap.min.js\">");
			  out.println("<TITLE>Tìm Kiếm</TITLE>");
			  out.println("<SCRIPT ID = clientEventHandlerJS LANGUAGE=javascript>");
			  out.println("</SCRIPT>");
			  out.println("</head>");
			  out.println("<body>");
			String name=request.getParameter("val");  
			if(name==null||name.trim().equals("")){  
			out.print("<p>Hãy nhâp lại điều kiện!</p>");  
			}else{  
			try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/detainckh?" +
                    "user=root&password=0123");  
			PreparedStatement ps=con.prepareStatement(" select DISTINCT DeTai_SinhVien.MaCapDT,DeTai.TenDeTai,ThongTinCanBo.HoTen "+ 
		            " from DeTai,ThongTinCanBo,DeTai_SinhVien "+
		            " where DeTai.MaDeTai=DeTai_SinhVien.MaDeTai and DeTai.GVHD=ThongTinCanBo.MaCanBo  and "+
		            " DeTai.TenDeTai like '"+name+"%' or DeTai_SinhVien.MaCapDT like '"+name+"%' or ThongTinCanBo.HoTen like '"+name+"%' ");  
			ResultSet rs=ps.executeQuery();  	  
			if(!rs.isBeforeFirst()) {      
			 out.println("<p>Không có thông tin cần tìm!</p>");   
			}else{  
			out.print("<table width='100%' class='table table-striped'>"); 
			out.print("<thead>");  
			out.print("<tr><th>Mã Đề Tài</th><th>Tên Đề Tài</th><th>Mã Giáo Viên Hưỡng Dẫn</th><th></th></tr>");  
			out.print("</thead>");  
			while(rs.next()){  
				out.print("<tbody>");  
			out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"
			+"<button class='btn btn-primary' data-toggle='modal' data-target='#myModal"+rs.getString(1)+"'"+">Xem Chi Tiết</button></td>"+
			"<div class='modal fade bs-example-modal-sm' id='myModal"+rs.getString(1)+"'"+"tabindex='-1' role='dialog' aria-labelledby='mySmallModalLabel' aria-hidden='true'>"+
				"<div class='modal-dialog modal-sm'>"+
				"<div class='modal-content'>"+
							 "<div class='modal-header'>"+
							"<button type='button' class='close' data-dismiss='modal'>&times;</button>"+
						"</div>"+
				"<div class='modal-body'>"	+
							 
							 "</div>"+
							
							 "</div>"+
							 
					    "</div>"+
					  "</div>"+
					"</div>"+
					"</td>"+
			"</tr>");  
			out.print("</tbody>");  
			}  
			out.print("</table>");  
			}//end of else for rs.isBeforeFirst  
			con.close();  
			}catch(Exception e){out.print(e);}  
			}//end of else  
			out.println("</body>");
			  out.println("</html>");
			%>  
</body>
</html>