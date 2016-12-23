<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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


<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
     user="root"  password="0123"/>
                <sql:query dataSource="${snapshot}" var="results">
		SELECT * FROM dangnhap where id= '${param.id}'
		</sql:query>
		
                   <form id="signupForm2"  action="Data/DB_update_QuanLyTaiKhoan.jsp" method="post" class="form-horizontal">
                 
           <c:forEach var="rowi" items="${results.rows}">
      <label class="col-xs-12 col-md-3  " for="name">ID</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="idU" id="idU1" value="${rowi.id}" placeholder="Nhập têm ID">
       </br>
    </div>   
       <label class="col-xs-12 col-md-3  " for="name">Tên Đăng Nhập<span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="user" id="user1" value="${rowi.uName}" placeholder="Nhập têm đăng nhập"  minlength="6" value="${rowi.FullName}">
       </br>
    </div>
    
       <label class="col-xs-12 col-md-3  " for="name">Mật Khẩu <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="pass" id="pass1" value="${rowi.Pass}" placeholder="Nhập mật khẩu"  minlength="6">
       </br>
    </div>

<label class="col-xs-12 col-md-3  " for="name">Họ Và Tên <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="hoten" id="hoten1"  value="${rowi.FullName}"placeholder="Nhập họ và tên user">
       </br>
    </div>
    
    <label class="col-xs-12 col-md-3  " for="name">Email <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="email"  class="form-control" name="email" id="email1" value="${rowi.email}" placeholder="Nhập Email" >
       </br>
    </div>
    
    <label class="col-xs-12 col-md-3" for="name">Phân Quyền <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9">
          <select class="form-control" name="quyen">
  <option value="sinhvien">Sinh Viên</option> 
  <option value="giangvien">Giảng Viên</option>
  <option value="nhanvienql">Nhân Viên Quản Lý</option>
		</select>
       </br>
    </div>
     <input type="reset" class="btn btn-default" value="Hủy"/>
       <input type="submit" class="btn btn-primary" value="Cập Nhật" />
    </form>
    </c:forEach>
		 

</body>
</html>