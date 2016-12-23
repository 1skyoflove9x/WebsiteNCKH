<%@ page import="connectdatabase.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="connectdatabase.ConnectMySql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="ThuVien/favicon.ico" type="image/x-icon" /><title>
	Nghiên Cứu Khoa Học Trường Đại Học Sư Phạm Kỹ Thuật
</title><meta name="Keywords" content="UTE Portal :: HCMC University of Technology and Education, Đại học Sư phạm Kỹ thuật" />
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet" type="text/css" href="ThuVien/css/Main.css"/>
  <link rel="stylesheet" type="text/css" href="ThuVien/css/bootstrap.css"/>
    <script src="ThuVien/Jquery/jquery-1.11.3.min.js"></script>
     <script src="ThuVien/Js/bootstrap.min.js"></script>
    <script src="ThuVien/Jquery/jquery.bootstrap-autohidingnavbar.js"></script>
<script src="ThuVien/Jquery/jquery.validate.min.js"></script> 
<script type="text/javascript" src="../ThuVien/Jquery/localization/messages_vi.js"></script>
 <script src="ThuVien/Js/jquery-ui.min.js"></script>
<script src="ThuVien/Js/script.js"></script>
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
    
<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
    </style>
    
</head>
<body>			

<%--  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
     user="root"  password="0123"/>
    
     <sql:query dataSource="${snapshot}" var="result">
			select * from filenckh
			</sql:query>

  <table class="table table-striped">
              <thead>
                <tr>
                  <th>id</th>
                  <th>Tên File</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
      <c:forEach var="row" items="${result.rows}">
      <tr>
     <td><c:out value="${row.ID}"/></td>
      <td><c:out value="${row.FILE_NAME}"/></td>
      <td><a href="view_file.jsp?id=${row.ID}">View</a></td>
      </tr>
        </c:forEach>
      </tbody>
      </table>
 --%>
		
	<form method="post" action="FileUploadExcel" enctype="multipart/form-data" >	
	</br>
 	 <div class="form-control-group" style="margin-left:1%;">
    <div class="col-xs-12 col-md-12">
     <input type="file" name="fileName" id="fileName"  />
    <p class="help-block">load các file báo cáo đính kém</p>
	</div>
	<label class="col-xs-12 col-md-13">Mô Tả</label>
	 <div class="col-xs-12 col-md-9">
	 <input type="text" class="form-control" name="description" />
	</div>
  <div  class="col-xs-12 col-md-4 col-md-offset-8 ">
<button type="submit  " class="btn btn-primary">Gửi</button>
	<button type="back" class="btn btn-default" >Trở Lại</button>  
    </div> 
    </br> 
    </div>
    </form>

</body>
</html>