<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connectdatabase.MyConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Quản Lý Đề Tài Nghiên Cứu Khoa Học</title><meta name="viewport" content="width=device-width, initial-scale=1">

 
 <link rel="stylesheet" type="text/css" href="ThuVien/css/Main.css"/>
  <link rel="stylesheet" type="text/css" href="ThuVien/css/bootstrap.css"/>
    <script src="ThuVien/Jquery/jquery-1.11.3.min.js"></script>
     <script src="ThuVien/Js/bootstrap.min.js"></script>
    <script src="ThuVien/Jquery/jquery.bootstrap-autohidingnavbar.js"></script>
<script src="ThuVien/Jquery/jquery.validate.min.js"></script> 
<script type="text/javascript" src="ThuVien/Jquery/localization/messages_vi.js"></script>
<script src="ThuVien/Js/script.js"></script>
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
   <script type="text/javascript">
//sử dụng ajax với funtion updatesession đổ dữ liệu qua trang session để xử lý dữ liệu ID
    function updateSession(id){
    	
    	$.ajax({
    			method:"POST",
    			url: "Data/session.jsp",
    			data: ({ idname: id}),
    			 dataType: "xml",
    			    success: function(xml) {
    			        $(xml).find('site').each(function(){
    			            var url = $(this).attr('url');                                  
    			        });
    			    }
    	
    			});
    };
    
    
  </script> 


<!-- <script type="text/javascript">
		$(window).load(function()
		{
		    $('#myModal').modal('show');
		});
</script> -->



<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>
<body>


<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
     user="root"  password="0123"/>
 <sql:query dataSource="${snapshot}" var="result">
		SELECT * FROM dangnhap
		</sql:query>
<div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Quản Lý Tệp Tin</strong></div>
    </div>
    </div>
        
       <div class="table-responsive">
            <table class="table table-striped">
             <thead>
            <tr><th>Tên File</th><th>Người Upload</th><th>Kiểu File</th><th>Thời Gian Upload</th><th>Mô Tả</th><th>Action</th></tr>
            </thead>
            <tbody>
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
            </tbody>          
        </table>
        <br/>
</body>
</html>