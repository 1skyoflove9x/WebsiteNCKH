<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   <div id="Center_Div" class="Center_Div"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Gia Hạn Đề Tài</strong></div>
    </div>
    </div>
    
    <form id="signupForm1" class="form-horizontal">
  <div class="form-group"  style="margin-left:20px;margin-right:20px;">
    <label for="exampleInputEmail1">Tên Đề Tài</label>
    <textarea class="form-control" rows="3"  name="name" id="tendetai" placeholder="nhập tên đề tài" minlength="20" required></textarea>
  </div>
<form class="form-inline" role="form"    >
  <div class="form-group "  style="margin-left:20px;margin-right:20px">
    <label for="exampleInputEmail1">Mã Đề Tài</label>
<input type="text" class="form-control" name="name" id="madetai" placeholder="Nhập mã đề tài" minlength="3" required>
<div class="container">
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Kiểm Tra Mã Đề Tài</button>
  <div id="demo" class="collapse">
    <h style="color:red">Mã đề tài của bạn là CT102</h>
  </div>
</div>
  </div>

<div class="form-group "  style="margin-left:20px;">
    <label for="inputEmail3" class="col-sm-2 control-label">Chủ Nhiệm</label>
    <div class="col-sm-4">
      <input type="text" class="form-control"name="name" id="chunhiem" placeholder="nhập tên chủ nhiệm" minlength="8" required>
    </div>
<label for="inputEmail3" class="col-sm-2 control-label">Ngày Sinh</label>
    <div class="col-sm-4">
      <input type="date" class="form-control"name="date" id="ngaysinh">
    </div>
</br></br>
  </div>

<div class="form-group"  style="margin-left:20px;">
    <label for="inputEmail3" class="col-sm-2 control-label">Đơn Vị</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="donvi" minlength="6" placeholder="Nhập khoa, ban, phòng công tác">
    </div>
<label for="inputEmail3" class="col-sm-2 control-label">SĐT</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="sdt" minlength="10" placeholder="Nhập số điện thoại" required>
    </div>
</br></br>
  </div>

<div class="form-group "  style="margin-left:20px;">
    <label for="inputEmail3" class="col-sm-2 control-label">Ngày Bắt Đầu</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="date" id="ngaybatdau">
    </div>
<label for="inputEmail2" class="col-sm-2 control-label">Ngày Kết Thúc</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="date" id="ngayketthuc">
    </div>
</br></br>
  </div>

<div class="form-group"  style="margin-left:20px;">
    <label for="inputEmail3" class="col-sm-2 control-label">Lớp</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" minlength="6" id="lop" placeholder="nhập lớp sinh viên theo học">

    </div>
<label for="inputEmail3" class="col-sm-2 control-label">Niên Khóa</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="nien khoa"  minlength="6" placeholder="Nhập niên khóa học của sinh viên">

    </div>
</br></br>
 </div>

<div class="form-group "  style="margin-left:20px;">
    <label for="inputEmail3" class="col-sm-3 control-label">Giáo Viên Hướng Dẫn</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" name="name" id="giaovien" minlength="6" placeholder="Nhập tên GV + học hàm hoặc học vị">

    </div>
</br></br>
  </div>

<div class="form-group "  style="margin-left:20px;"> 
 <label for="inputEmail3" class="col-sm-3 control-label">Kinh Phí Dự Án</label>
    <div class="col-sm-9">
      <input type="number" class="form-control" name="number"  id="kinhphi" placeholder="Nhập kính phí theo hợp đồng" required>
    </div></br></br>
</div>

<div class="form-group"  style="margin-left:20px;">
    <label for="inputEmail3" class="col-sm-2 control-label">Kinh Phí Tạm ứng </label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="kinhphiung" placeholder="Nhập tạm ứng" required>
    </div>
<label for="inputEmail2" class="col-sm-2 control-label">Vào Ngày</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="date" id="vaonhay" >
    </div>
</br></br>
  </div>
<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Xin Gia Hạn Đến Ngày </label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="date" id="tamung" >
    </div>
<label for="inputEmail2" class="col-sm-5 control-label"></label>
</br></br>
  </div>

<form class="form-inline" role="form"  >
  <div class="form-group" style="margin-left:20px;margin-right:20px">
    <label for="exampleInputEmail1">Lý Do</label>
    <textarea class="form-control" name="name" id="lydo" rows="5"placeholder="Nhập lý do gia hạn đề tài"></textarea>
  </div>

<div class="form-group">
								<div class="col-sm-5">
									<div class="checkbox">
										<label>
											<input type="checkbox" id="agree" name="agree" value="agree" required/>Tôi đã đồng ý cập nhật
										</label>
									</div>
								</div>
							</div>
</label>
</br></br>
<div style="margin-left:500px;margin-right:10px" class="form-group">
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở Về</button>
        <button  type="submit"  class="btn btn-primary" name="signup" value="Đăng ký" onclick="javascript:void(alert('Thành Công!!!'))">Cập nhật</button>
      </div>
</form>
           </form>   
    
</body>
</html>