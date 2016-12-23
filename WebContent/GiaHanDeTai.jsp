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
    
          <c:if test="${sessionScope.quyen == 'sinhvien'}">
     <sql:query dataSource="${snapshot}" var="result">
		SELECT * 
		FROM ThongTinSinhVien,DeTai,DeTai_SinhVien,DeTai_ThongTin,ThongTinCanBo 
		WHERE ThongTinSinhVien.MSSV= DeTai_SinhVien.MSSV 
		and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai and DeTai_ThongTin.MaDeTai=DeTai.MaDeTai
		and ThongTinCanBo.MaCanBo=DeTai.GVHD
		and ThongTinSinhVien.MSSV = '${sessionScope['loginUser']}';
</sql:query>
		</c:if>
		<c:if test="${sessionScope.quyen == 'giangvien'||sessionScope.quyen == 'nhanvienql'}">
     <sql:query dataSource="${snapshot}" var="result">
		SELECT * 
		FROM ThongTinCanBo,DeTai,DeTai_CanBo,DeTai_ThongTin 
		WHERE ThongTinCanBo.MaCanBo=DeTai_CanBo.MaCanBo
		and DeTai.MaDeTai=DeTai_CanBo.MaDeTai and DeTai_ThongTin.MaDeTai=DeTai.MaDeTai
		and ThongTinCanBo.MaCanBo = '${sessionScope['loginUser']}';
</sql:query>
		</c:if>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Gia Hạn Đề Tài</strong></div>
    </div>
    </div>

    <form id="signupForm1" class="form-horizontal" action="Data/DB_Update_TrangThaiDeTai.jsp" method="post">
      <c:forEach var="row" items="${result.rows}">
  <div class="form-control-group" style="margin-left:1%;">
    <label class="col-xs-12 col-md-12  ">Tên Đề Tài <span class="rq"> * </span></label>
     <div class="col-xs-12 col-md-12 ">
    <input type="text" class="form-control" rows="2" name="tendetai" value="${row.TenDeTai}" id="tendetai" minlength="20" placeholder="nhập tên đề tài"  required></input>
    <p class="help-block">Nhập theo tên đã đăng ký</p>
  </div>
     <label class="col-xs-12 col-md-3  " >Mã Đề Tài<span class="rq"> *</label>
    <div class="col-xs-12 col-md-6">
     <input type="hidden" class="form-control"  name="madetai" id="madetai" value="${row.MaDeTai}">
     <input type="text"  class="form-control" name="madetai2" value="${row.MaCapDT}" id="madetai2" placeholder="Nhập nhập mã đề tài"  minlength="1">
    </div>
    <div class="col-xs-12 col-md-3">
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Kiểm Tra Mã Đề Tài</button>
  <div id="demo" class="collapse">
    <h style="color:red">Mã đề tài của bạn là ${row.MaCapDT}</h>
  </div>
     </br></br></br>
</div>

    <label  class="col-xs-12 col-md-3  ">Chủ Nhiệm</label>
    <div class="col-xs-12 col-md-9  "">
      <input type="text" class="form-control"name="chunhiem" value="${row.HoTen}" id="chunhiem" placeholder="nhập tên chủ nhiệm" minlength="8" required>
    </br>
    </div>
<label class="col-xs-12 col-md-3  ">Ngày Sinh</label>
    <div class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control"name="ngaysinh" value="${row.NgaySinh}" id="ngaysinh">
      </br>
    </div>

    <label class="col-xs-12 col-md-3  ">Đơn Vị</label>
    <div  class="col-xs-12 col-md-9  ">
     <c:if test="${sessionScope.quyen == 'sinhvien'}">
      <input type="text" class="form-control" name="donvi" value="${row.Khoa}" id="donvi" minlength="6" placeholder="Nhập khoa, ban, phòng công tác">
      </c:if>
       <c:if test="${sessionScope.quyen == 'giangvien'}">
      <input type="text" class="form-control" name="donvi" value="${row.DonViCongTac}" id="donvi" minlength="6" placeholder="Nhập khoa, ban, phòng công tác">
      </c:if>
   </br>
    </div>
<label  class="col-xs-12 col-md-3  ">SĐT</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="number" class="form-control" name="SDT" value="${row.SDT}" id="sdt" minlength="10" placeholder="Nhập số điện thoại" required>
    </br>
    </div>


    <label  class="col-xs-12 col-md-3  ">Ngày Bắt Đầu</label>
    <div class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control" name="ngaybatdau" id="ngaybatdau">
      </br>
    </div>
<label  class="col-xs-12 col-md-3  ">Ngày Kết Thúc</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control" name="ngayketthuc" id="ngayketthuc">
      </br>
    </div>
         <c:if test="${sessionScope.quyen == 'sinhvien'}">
    <label  class="col-xs-12 col-md-3  ">Lớp</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="text" class="form-control" name="lop" value="${row.Lop}" minlength="6" id="lop" placeholder="nhập lớp sinh viên theo học">
</br>
    </div>
<label  class="col-xs-12 col-md-3  ">Niên Khóa</label>
    <div  class="col-xs-12 col-md-9 ">
      <input type="text" class="form-control" name="nienkhoa" value="${row.NienKhoa}" id="nien khoa"  minlength="6" placeholder="Nhập niên khóa học của sinh viên">
    </br>
    </div>
    <label class="col-xs-12 col-md-3  ">Giáo Viên Hướng Dẫn</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="text" class="form-control" name="gvhd" value="${row.HoTen}" id="giaovien" minlength="6" placeholder="Nhập tên GV + học hàm hoặc học vị">
<br>
    </div>
	</c:if>
 <label  class="col-xs-12 col-md-3  ">Kinh Phí Dự Án</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="number" class="form-control" name="kinhphi" value="${row.KinhPhi}"  id="kinhphi" placeholder="Nhập kính phí theo hợp đồng" required>
    </br>
    </div>
    <label  class="col-xs-12 col-md-3  ">Kinh Phí Tạm ứng </label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="number" class="form-control" name="kinhphitamung" value="${row.KinhPhiTamUng}" id="kinhphiung" placeholder="Nhập tạm ứng" required>
      </br>
    </div>
<label  class="col-xs-12 col-md-3  ">Vào Ngày</label>
    <div  class="col-xs-12 col-md-9 ">
      <input type="date" class="form-control" name="ngaytamung" value="${row.NgayTamUng}" id="vaonhay" >
      </br>
    </div>
    <label  class="col-xs-12 col-md-3  ">Xin Gia Hạn Đến Ngày </label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control" name="ngaygiahan" id="tamung" >
      </br>
    </div>
    <label  class="col-xs-12 col-md-3  ">Lý Do</label>
    <div  class="col-xs-12 col-md-3  "></div>
    <textarea class="form-control" name="lydo" id="lydo" rows="5"placeholder="Nhập lý do gia hạn đề tài"></textarea>
    </br>
  </div>

								<div  class="col-xs-12 col-md-12  ">
									<div class="checkbox">
										<label>
											<input type="checkbox" name="TrangThai" id="xacnhan" value="Đề tài chờ gia hạn" required/>Tôi đã đồng ý cập nhật
										</label>
									</div>
									</br>
								</div>	
<div  class="col-xs-12 col-md-4 col-md-offset-8 ">
        <input type="reset" class="btn btn-default" value="reset"/>
       			<input type="submit" class="btn btn-primary" value="Gửi Yêu Cầu" />
      </div>
      </div>
       </c:forEach>
</form>
    
</body>
</html>