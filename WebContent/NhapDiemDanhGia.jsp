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
	       <c:if test="${sessionScope.quyen == 'giangvien'}">
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
			Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
			and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
			and DeTai.GVHD='${sessionScope['loginUser']}'
			and DeTai_SinhVien.TrangThai='Đề tài chờ nghiệm thu'
	</sql:query>
	</c:if>
	   <c:if test="${sessionScope.quyen == 'nhanvienql'}">
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
			Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
			and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
			and DeTai_SinhVien.TrangThai='Đề tài chờ nghiệm thu'
	</sql:query>
	</c:if>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Chấm Điểm Đánh Giá Đề Tài</strong></div>
    </div>
    </div>
      
              <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>Ngày Đăng Ký</th>
	<th></th>
	<th></th>
                </tr>
              </thead>
              <tbody>
               <c:forEach var="row" items="${result.rows}">
                <tr>
                  <td><c:out  value="${row.MaCapDT}"/></td>
                  <td><c:out  value="${row.TenDeTai}"/></td>
                  <td><c:out  value="${row.HoTen}"/></td>
                  <td><c:out  value="${row.NgayDangKy}"/></td>
                    <c:if test="${sessionScope.quyen == 'giangvien'}">
                   <td><div id="tb1"><a href = "Actor_GiaoVien_XemDeTai.jsp?MaDeTai=${row6.MaDeTai}">Xem chi tiết</a></div></td>
                   </c:if>
                    <c:if test="${sessionScope.quyen == 'nhanvienql'}">
                   <td><div id="tb1"><a href = "Actor_NhanVien_XemDeTai.jsp?MaDeTai=${row6.MaDeTai}">Xem chi tiết</a></div></td>
                   </c:if>
 					<td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.id}">Chấm Điểm</button> <!-- Modal -->				
							<div id="myModal${row.id}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title"><c:out  value="${row.TenDeTai}"/></h4>
														</div>
												<div class="modal-body">		
     													<form id="signupForm1"  action="Data/DB_insert_DiemDanhGia.jsp" method="post" class="form-horizontal">
															      <label class="col-xs-12 col-md-3  " for="name">Mã Đề Tài</label>
															    <div class="col-xs-12 col-md-9 ">
															     	 <input type="hidden" class="form-control"  name="madetai" id="madetai" value="${row.MaDeTai}">
															          <input type="text"  class="form-control" name="MaDeTai2" id="MaDeTai2" value="${row.MaCapDT}" placeholder="Nhập mã đề tài">
															       </br>
															    </div>   
															       <label class="col-xs-12 col-md-3  " for="name">Tình Hình Nghiên Cứu<span class="rq"> *</label>
															    <div class="col-xs-12 col-md-9 ">
															          <input type="text"  class="form-control" name="TinhHinhNghienCuu" id="TinhHinhNghienCuu"placeholder="Nhập tình hình nghiên cứu"  minlength="1">
															       </br>
															    </div>
															    
															       <label class="col-xs-12 col-md-3  " for="name">Mục Tiêu Đề Tài <span class="rq"> *</label>
															    <div class="col-xs-12 col-md-9 ">
															          <input type="text"  class="form-control" name="MucTieu" id="MucTieu" placeholder="Nhập mục tiêu"  minlength="1">
															       </br>
															    </div>
															
															<label class="col-xs-12 col-md-3  " for="name">Phương Pháp Nghiên Cứu<span class="rq"> *</label>
															    <div class="col-xs-12 col-md-9 ">
															          <input type="text"  class="form-control" name="PhuongPhap" id="PhuongPhap" placeholder="Nhập phương pháp nghiên cứu">
															       </br>
															    </div>
															    
															    <label class="col-xs-12 col-md-3  " for="name">Áp Dụng Vào Thực Tế <span class="rq"> *</label>
															    <div class="col-xs-12 col-md-9 ">
															          <input type="text"  class="form-control" name="GD" id="GD" placeholder="Nhập điểm áp dụng thực tế" >
															       </br>
															    </div>
															    <label class="col-xs-12 col-md-3  " for="name">Khả Năng Phát Triển<span class="rq"> *</label>
															    <div class="col-xs-12 col-md-9 ">
															          <input type=""text"  class="form-control" name="KhaNangPhatTrien" id="KhaNangPhatTrien" placeholder="Nhập điểm áp dụng thực tế" >
															       </br>
															    </div>
															    <label class="col-xs-12 col-md-3  " for="name">Tổng Điểm<span class="rq"> *</label>
															    <div class="col-xs-12 col-md-9 ">
															          <input type=""text"  class="form-control" name="TongDiem" id="TongDiem" placeholder="Nhập điểm áp dụng thực tế" >
															       </br>
															    </div>
															   
															     <input type="reset" class="btn btn-default" value="Hủy"/>
															       <input type="submit" class="btn btn-primary" value="Thêm Điểm" />
															    </form> 
   														 </div>
															
   														 </div>
   														 
													    </div>
													  </div>
													</div>
											</td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        

</body>
</html>