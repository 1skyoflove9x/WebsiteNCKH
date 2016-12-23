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
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
<script>
      addEventListener('load', prettyPrint, false);
$(document).ready(function() {
	var lenght = $("#Center_Div").css("height");
    $("#Left_Div").css("height",lenght);
$(".alert").alert()
});
$('.carousel').carousel()

</script>
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
	  	SELECT * FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
		Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
		and DeTai_SinhVien.MSSV = ThongTinSinhVien.MSSV and DeTai_SinhVien.MaDeTai=DeTai.MaDeTai
		and DeTai.MaDeTai='14110425'   
</sql:query>


          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Đăng Ký Đề Tài</strong></div>
    </div>
    </div>
    
                   
<form id="signupForm1"  action="Data/DB_insert_DeTai.jsp" method="post" class="form-horizontal">
  <c:forEach var="row" items="${result.rows}">
  <div class="form-control-group" style="margin-left:1%;">
    <label class="col-xs-12 col-md-3  ">Tên Đề Tài <span class="rq"> * </span></label>
     <div class="col-xs-12 col-md-9 ">
		<h2><c:out  value="${row.TenDeTai}"/></h2>  </br>
    </div>

    <label class="col-xs-12 col-md-3  " for="name">Họ Tên Chủ Nhiệm <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
<c:out  value="${row.HoTen}"/>       </br>
    </div>
  
<label for="name" class="col-xs-12 col-md-3 ">Ngày Sinh</label>
    <div class="col-xs-12 col-sm-9  ">
<c:out  value="${row.NgaySinh}"/>       </br>
    </div>
   
    <label class="col-xs-12 col-md-3 " for="name">Đơn Vị</label>
    <div class="col-xs-12 col-md-9">
    <c:out  value="${row.DonVi}"/>

       </br>
    </div>
     
         <label class="col-xs-12 col-md-3">Ngành</label>
    <div class="col-xs-12 col-md-9">
 <c:out  value="${row.Nganh}"/>      </br>
    </div>

    <label class="col-xs-12 col-md-3" >Email</label>
    <div class="col-xs-12 col-md-9">
 <c:out  value="${row.Email}"/>      </br>
    </div>
<label class="col-xs-12 col-md-3">Giới tính</label>
    <div class="col-xs-12 col-md-9">
     <c:out value="${row.GioiTinh}"/>
  </br></br>
    </div>
    <label class="col-xs-12 col-md-3">Lớp</label>
    <div class="col-xs-12 col-md-9">
 		<c:out  value="${row.Lop}"/>  
 		    </br>
    </div>

<label  class="col-xs-12 col-md-3">Niên Khóa</label>
    <div class="col-xs-12 col-md-9">
 <c:out  value="${row.NienKhoa}"/>   </br>
    </div>

   
    <label  class="col-xs-12 col-md-3">Mã Số Giáo Viên Hướng Dẫn <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9">
 <c:out  value="${row.GVHD}"/>    </br>
    </div>
    <label class="col-xs-12 col-md-3">Lĩnh Vực Nghiên Cứu</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.LinhVu}"/>
</br></br>
    </div>

    <label class="col-xs-12 col-md-3">Loại Hình Cơ Bản</label>
    <div class="col-xs-12 col-md-9">

 <c:out  value="${row.LoaiHinh}"/>
</br></br>
    </div>

    <label  class="col-xs-12 col-md-3">Cơ Quan Chủ Trì</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.DonVi}"/>
      </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tình Hình Trong Nước</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.TinhHinhTrongNuoc}"/>
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tình Hình Ngoài Nước</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.TinhHinhNgoaiNuoc}"/>
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Các Công Trình Liên Quan</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.CacCongTrinhLienQuan}"/>
   </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tính Cấp Thiết</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.TinhCapThiet}"/>
    </br>
    </div>

    <label class="col-xs-12 col-md-3">Mục Tiêu Đề Tài</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.MucTieu}"/>
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Phương Pháp Nghiên Cứu</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.PhuongPhapNghienCuu}"/>
    </br>
    </div>

    <label class="col-xs-12 col-md-12">Nôi Dung Nghiên Cứu Và Tiến Độ Thực Hiện</label>
    <div class="col-xs-12 col-md-12">
    <c:out  value="${row.NoiDung}"/>
</br>
</div>
    <label class="col-xs-12 col-md-3">Loại Sản Phẩm</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.LoaiSanPham}"/>
</br></br>
    </div>

   
    

    <label class="col-xs-12 col-md-3">Địa Chỉ ứng Dụng</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.DiaChiUngDung}"/>
   </br>
    </div>

 <label class="col-xs-12 col-md-3">Kinh Phí Dự Trù</label>
    <div class="col-xs-12 col-md-9">
     <c:out  value="${row.KinhPhi}"/>
      </br>
    </div>
 
      </div>
      </c:forEach>
   </form>  
    

</body>
</html>