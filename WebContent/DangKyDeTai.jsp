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
	SELECT * FROM ThongTinSinhVien
	WHERE ThongTinSinhVien.MSSV = '${sessionScope['loginUser']}' 
</sql:query>
		</c:if>
		<c:if test="${sessionScope.quyen == 'giangvien'||sessionScope.quyen == 'nhanvienql'}">
     <sql:query dataSource="${snapshot}" var="result">
	SELECT * 
	FROM ThongTinCanBo
	WHERE 
	ThongTinCanBo.MaCanBo = '${sessionScope['loginUser']}' 
</sql:query>
		</c:if>

          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Đăng Ký Đề Tài</strong></div>
    </div>
    </div>
    
                   
<form id="signupForm1"  action="Data/DB_insert_DeTai.jsp" method="post" class="form-horizontal">
  <c:forEach var="row" items="${result.rows}">
  <div class="form-control-group" style="margin-left:1%;">
    <label class="col-xs-12 col-md-12  ">Tên Đề Tài <span class="rq"> * </span></label>
     <div class="col-xs-12 col-md-12 ">
    <textarea type="text" class="form-control" rows="2" name="TenDeTai" id="tendetai" value="${row.TenDeTai}" minlength="20" placeholder="nhập tên đề tài"  required></textarea>
   </br>
    </div>

    <label class="col-xs-12 col-md-3  " for="name">Họ Tên Chủ Nhiệm <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="hoten" id="name" value="${row.HoTen}" placeholder="Nhập tên chủ nhiệm"  minlength="6">
       </br>
    </div>
  
<label for="name" class="col-xs-12 col-md-3 ">Ngày Sinh</label>
    <div class="col-xs-12 col-sm-9  ">
              <input type="date" class="form-control" value="${row.NgaySinh}" name="ngaysinh" id="ngaysinh">
       </br>
    </div>
   
    <label class="col-xs-12 col-md-3 " for="name">Đơn Vị</label>
    <div class="col-xs-12 col-md-9">
          <c:if test="${sessionScope.quyen == 'sinhvien'}">
          <input type="text"  class="form-control" name="donvi" value="${row.Khoa}" id="donvi" placeholder="Nhập tên đơn vị" minlength="6">
     </c:if>
     <c:if test="${sessionScope.quyen == 'giangvien'||sessionScope.quyen == 'nhanvienql'}">
     	  <input type="text"  class="form-control" name="donvi" value="${row.DonViCongTac}" id="donvi" placeholder="Nhập tên đơn vị" minlength="6">
     </c:if>

       </br>
    </div>
       <c:if test="${sessionScope.quyen == 'sinhvien'}">
         <label class="col-xs-12 col-md-3">Ngành</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control"  value="${row.Nganh}" name="nganh" id="nganh" placeholder="Nhập tên ngành" minlength="6">
      </br>
    </div>
     </c:if>

    <label class="col-xs-12 col-md-3" >Email</label>
    <div class="col-xs-12 col-md-9">
      <input type="email" class="form-control"  name="email" id="email" value="${row.Email}" placeholder="nhập địa chỉ email">
      </br>
    </div>
<label class="col-xs-12 col-md-3">Giới tính</label>
    <div class="col-xs-12 col-md-9">
     <c:out value="${row.GioiTinh}"/>
  </br></br>
    </div>
 <c:if test="${sessionScope.quyen == 'sinhvien'}">
    <label class="col-xs-12 col-md-3">Lớp</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="lop" value="${row.Lop}" id="lop" placeholder="nhập lớp sinh viên theo học" minlength="4">
      </br>
    </div>
   </c:if>
    <c:if test="${sessionScope.quyen == 'sinhvien'}">
<label  class="col-xs-12 col-md-3">Niên Khóa</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="nienkhoa" value="${row.NienKhoa}" id="nienkhoa" placeholder="Nhập niên khóa học của sinh viên" minlength="3">
   </br>
    </div>
    </c:if>
     <c:if test="${sessionScope.quyen == 'sinhvien'}">
    <label  class="col-xs-12 col-md-3">Giáo Viên Hướng Dẫn <span class="rq">*</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="TenCanBo" id="TenCanBo" value="${row.TenCanBo}" placeholder="Nhập tên GV " minlength="6">
    </br>
    </div>
    <label  class="col-xs-12 col-md-3">Mã Số Cán Bộ <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="GVHD" id="GVHD" value="${row.MaCanBo}" placeholder="Nhập mã cán bộ" minlength="6">
    </br>
    </div>
	</c:if>
    <label class="col-xs-12 col-md-3">Lĩnh Vực Nghiên Cứu</label>
    <div class="col-xs-12 col-md-9">
     <label class="checkbox-inline">
  <input type="checkbox" name="LinhVuc" id="tunhien" value="Tự Nhiên" > Tự Nhiên
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LinhVuc" id="xahoi" value="Xã Hội"> Xã Hội
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LinhVuc" id="giaoduc" value="Giáo Dục" > Giáo Dục
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LinhVuc" id="kythuat" value="Kỹ Thuật"> Kỹ Thuật
</label>
<label class="checkbox-inline">
  <input type="checkbox"name="LinhVuc" id="nonglam" value="Nông Lâm Ngữ"> Nông Lâm Ngư
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LinhVuc" id="yduoc" value="Y Dược"> Y Dược
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LinhVuc" id="moitruong" value="Môi Trường"> Môi Trường
</label>
</br></br>
    </div>

    <label class="col-xs-12 col-md-3">Loại Hình Cơ Bản</label>
    <div class="col-xs-12 col-md-9">
     <label class="checkbox-inline">
  <input type="checkbox" name="LoaiHinhCoBan" id="coban" value="Cơ Bản"> Cơ Bản
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiHinhCoBan" id="ungdung" value="Ứng Dụng"> Ứng Dụng
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiHinhCoBan" id="trienkhai" value="Triển Khai"> Triển Khai
</label>
</br></br>
    </div>

    <label  class="col-xs-12 col-md-3">Cơ Quan Chủ Trì</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="CoQuanChuTri" id="coquan" placeholder="Nhâp tên đơn vị tổ chức NCKH">
      </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tình Hình Trong Nước</label>
    <div class="col-xs-12 col-md-9">
      <textarea class="form-control" rows="3" name="TinhHinhTrongNuoc" id="tinhhinhtrongnuoc" placeholder="Nhập các vấn đề liên quan đến đề tài có ở trong nước"></textarea> 
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tình Hình Ngoài Nước</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="TinhHinhNgoaiNuoc" id="tinhhinhngoainuoc" placeholder="Nhập các vấn đề liên quan đến đề tài có ở ngoài nước" minlength="20"></textarea> 
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Các Công Trình Liên Quan</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="CacCongTrinhLienQuan" id="caccongtrinh" placeholder="Những sản phẩm đã có trên thị trường"></textarea> 
   </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tính Cấp Thiết</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="TinhCapThiet" id="tinhcapthiet" placeholder="Nhập tính cấp thiết của ứng dụng"></textarea> 
    </br>
    </div>

    <label class="col-xs-12 col-md-3">Mục Tiêu Đề Tài</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" name="MucTieu" id="muctieu" rows="3" placeholder="Mục Tiêu Đề Tài"  minlength="6"></textarea> 
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Phương Pháp Nghiên Cứu</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="PhuongPhapNghienCuu" id="phuongphap" placeholder="Nhập Phương Pháp Nghiên Cứu"  minlength="6"></textarea> 
    </br>
    </div>

    <label class="col-xs-12 col-md-12">Nôi Dung Nghiên Cứu Và Tiến Độ Thực Hiện</label>
    <div class="col-xs-12 col-md-12">
    <table class="table table-bordered">
 <tr><th>Stt</th><th>Nội dung công việc</th> <th>Sản phẩm phải đạt</th><th>Thơi Gian</th><th>Người Thực Hiện</th> </tr>
<tr>
<th> <input type="number" class="form-control" name="noidungcv" id="stt"></th>
<th> <input type="text" class="form-control" name="noidungcv" id="noidung" placeholder="Nhập nội dung công việc"></th>
<th> <input type="text" class="form-control" name="noidungcv" id="sp" placeholder="Nhập sản phẩm phải đạt"></th>
<th> <input type="text" class="form-control" name="noidungcv" id="thoigian" placeholder="Nhập thời gian( số tháng)"></th>
<th> <input type="text" class="form-control" name="noidungcv" id="nguoithuchien"  placeholder="Nhập người thực hiện"></th>
</tr>
<tr>
<button type="add" class="btn btn-default">Thêm Công Việc</button>
</tr>
  </table>
</br>
</div>
    <label class="col-xs-12 col-md-3">Loại Sản Phẩm</label>
    <div class="col-xs-12 col-md-9">
     <label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="mau" value="Mẫu"> Mẫu
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="vatlieu" value="Vật Liệu"> Vật Liệu
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="thietbimaymoc" value="Thiết Bị Máy Móc"> Thiết Bị Máy Móc
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="phuongphap" value="Phương Pháp"> Phương Pháp
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="giongcay" value="Giống Cây"> Giống Cây
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="gionggiasuc" value="Giống Gia Súc"> Giống Gia Súc
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="quytrinhcongnghe" value="Quy Trình Công Nghệ"> Quy Trình Công Nghệ
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="baocaophantic" value="Báo Cáo Phân Tích"> Báo Cáo Phân Tích
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="tieuchuan" value="Tiêu Chuẩn">Tiêu Chuẩn
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="quypham" value="Quy Phạm">Quy Phạm
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="sodo" value="Sơ Đồ">Sơ Đồ
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="chuongtrinhmaytinh" value="Chương Trình Máy Tính">Chương Trình Máy Tính
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="tulieudubao" value="Tư Liệu Dự Báo">Tư Liệu Dự Báo
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="dean" value="Đề Án">Đề Án
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="luanchungkinhte" value="Luận Chứng Kinh Tế">Luận Chứng Kinh Tế
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="bankiennghi" value="Bản Kiến Nghị">Bản Kiến Nghị
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="sanphamkhac" value="Sản Phẩm Khác">Sản Phâm Khác
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" name="LoaiSanPham" id="daytruyencongnghe" value="Dây Chuyền Công Nghệ">Dây Chuyền Công Nghệ
</label>
</br></br>
    </div>

    <label class="col-xs-12 col-md-12">Tên Sản Phẩm, Số Lượng Và Yêu Cầu Khoa Học Đối Với Sản Phẩm</label></br>
    <table class="table table-bordered">
 <tr><th>Stt</th><th>Tên sản phẩm</th> <th>Số lượng</th><th>Yêu cầu khoa học</th> </tr>
<tr>
<th> <input type="number" class="form-control" name="sanpham" id="sttsp"></th>
<th> <input type="text" class="form-control" name="sanpham" id="sp" placeholder="Nhập sản phẩm"></th>
<th> <input type="number" class="form-control" name="sanpham" id="soluong"></input></th>
<th> <input type="text" class="form-control" name="sanpham" id="yeucaukhoahoc" placeholder="Nhập yêu cầu khoa học"></th>
</tr>
<button type="add" class="btn btn-default">Thêm sản phẩm</button>
  </table>

    <label class="col-xs-12 col-md-3">Địa Chỉ ứng Dụng</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="DiaChiUngDung" id="diachiungdung" placeholder="nhập địa chỉ ứng dụng của sản phẩm">
   </br>
    </div>

 <label class="col-xs-12 col-md-3">Kinh Phí Dự Trù</label>
    <div class="col-xs-12 col-md-9">
      <input type="number" class="form-control" name="KinhPhi" id="kinhphidutru">
      </br>
    </div>
    <table class="table table-bordered">
 <tr><th>Stt</th><th>Công việc</th> <th>Thành tiền</th><th>Ghi chú</th> </tr>
<tr>
<th> <input type="number" class="form-control" name="kinhphidutru" id="sttkinhphi"></th>
<th> <input type="text" class="form-control" name="kinhphidutru" id="congviec"></th>
<th> <input type="number" class="form-control" name="kinhphidutru" id="thanhtien"></input></th>
<th> <input type="text" class="form-control" name="kinhphidutru" id="ghichucv" placeholder="Nhập ghi chú "></th>
</tr>
<button type="add" class="btn btn-default">Thêm kinh phí</button>
  </table>

    <label class="col-xs-12 col-md-12">File đính kèm</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">load các file báo cáo đính kém</p></br>
								<div class="col-xs-12 col-md-12">
									<div class="checkbox">
										<label>
											<c:if test="${sessionScope.quyen == 'sinhvien'}">
											<input type="checkbox" name="TrangThai" id="xacnhan" value="Đề tài chờ duyệt đăng ký" required/>Tôi đã đồng ý cập nhật
											</c:if>
											<c:if test="${sessionScope.quyen == 'giangvien'||sessionScope.quyen == 'nhanvienql'}">
											<input type="checkbox" name="TrangThai" id="xacnhan" value="Đề tài chờ duyệt thực hiện" required/>Tôi đã đồng ý cập nhật
											</c:if>
										</label>
									</div>
								</div>
						
</label>
</br></br>
        <input type="reset" class="btn btn-default" value="reset"/>
       <input type="submit" class="btn btn-primary" value="Save" />
      </div>
      </c:forEach>
   </form>  
    

</body>
</html>