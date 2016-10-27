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
  <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Hủy Đề Tài</strong></div>
    </div>
    </div>
    
    <form id="signupForm1" class="form-horizontal">
  <div class="form-control-group" style="margin-left:1%;">
    <label class="col-xs-12 col-md-12  ">Tên Đề Tài <span class="rq"> * </span></label>
     <div class="col-xs-12 col-md-12 ">
    <textarea type="text" class="form-control" rows="2" name="name" id="tendetai" minlength="20" placeholder="nhập tên đề tài"  required></textarea>
    <p class="help-block">Nhập theo tên đã đăng ký</p>
  </div>
     <label class="col-xs-12 col-md-3  " >Mã Đề Tài<span class="rq"> *</label>
    <div class="col-xs-12 col-md-6">
     <input type="text"  class="form-control" name="name" id="madetai" placeholder="Nhập nhập mã đề tài"  minlength="6">
    </div>
    <div class="col-xs-12 col-md-3">
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Kiểm Tra Mã Đề Tài</button>
  <div id="demo" class="collapse">
    <h style="color:red">Mã đề tài của bạn là CT102</h>
  </div>
     </br></br></br>
</div>

    <label  class="col-xs-12 col-md-3  ">Chủ Nhiệm</label>
    <div class="col-xs-12 col-md-9  "">
      <input type="text" class="form-control"name="name" id="chunhiem" placeholder="nhập tên chủ nhiệm" minlength="8" required>
    </br>
    </div>
<label class="col-xs-12 col-md-3  ">Ngày Sinh</label>
    <div class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control"name="date" id="ngaysinh">
      </br>
    </div>

    <label class="col-xs-12 col-md-3  ">Đơn Vị</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="text" class="form-control" name="name" id="donvi" minlength="6" placeholder="Nhập khoa, ban, phòng công tác">
   </br>
    </div>
<label  class="col-xs-12 col-md-3  ">SĐT</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="number" class="form-control" name="number" id="sdt" minlength="10" placeholder="Nhập số điện thoại" required>
    </br>
    </div>


    <label  class="col-xs-12 col-md-3  ">Ngày Bắt Đầu</label>
    <div class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control" name="date" id="ngaybatdau">
      </br>
    </div>
<label  class="col-xs-12 col-md-3  ">Ngày Kết Thúc</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="date" class="form-control" name="date" id="ngayketthuc">
      </br>
    </div>
    <label  class="col-xs-12 col-md-3  ">Lớp</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="text" class="form-control" name="name" minlength="6" id="lop" placeholder="nhập lớp sinh viên theo học">
</br>
    </div>
<label  class="col-xs-12 col-md-3  ">Niên Khóa</label>
    <div  class="col-xs-12 col-md-9 ">
      <input type="number" class="form-control" name="number" id="nien khoa"  minlength="6" placeholder="Nhập niên khóa học của sinh viên">
    </br>
    </div>

    <label class="col-xs-12 col-md-3  ">Giáo Viên Hướng Dẫn</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="text" class="form-control" name="name" id="giaovien" minlength="6" placeholder="Nhập tên GV + học hàm hoặc học vị">
<br>
    </div>

 <label  class="col-xs-12 col-md-3  ">Kinh Phí Dự Án</label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="number" class="form-control" name="number"  id="kinhphi" placeholder="Nhập kính phí theo hợp đồng" required>
    </br>
    </div>
    <label  class="col-xs-12 col-md-3  ">Kinh Phí Tạm ứng </label>
    <div  class="col-xs-12 col-md-9  ">
      <input type="number" class="form-control" name="number" id="kinhphiung" placeholder="Nhập tạm ứng" required>
      </br>
    </div>
<label  class="col-xs-12 col-md-3  ">Vào Ngày</label>
    <div  class="col-xs-12 col-md-9 ">
      <input type="date" class="form-control" name="date" id="vaonhay" >
      </br>
    </div>
    <label  class="col-xs-12 col-md-12  ">Tôi xin hủy đề tài và nộp lại số tiền tạm ứng cho phòng kế hoạch - tài chính trước ngày: </label>
    <div  class="col-xs-12 col-md-12  ">
       <input type="date" class="form-control" name="date" id="ngaytralai">
      </br>
    </div>
    <label  class="col-xs-12 col-md-3  ">Lý Do</label>
    <div  class="col-xs-12 col-md-3  "></div>
    <textarea class="form-control" name="name" id="lydo" rows="5"placeholder="Nhập lý do gia hạn đề tài"></textarea>
    </br>
  </div>

								<div  class="col-xs-12 col-md-12  ">
									<div class="checkbox">
										<label>
											<input type="checkbox" id="agree" name="agree" value="agree" required/>Tôi đã đồng ý cập nhật
										</label>
									</div>
									</br>
								</div>	
<div  class="col-xs-12 col-md-4 col-md-offset-8 ">
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở Về</button>
        <button  type="submit"  class="btn btn-primary" name="signup" value="Đăng ký" onclick="javascript:void(alert('Thành Công!!!'))">Cập nhật</button>
      </div>
      </div>
</form>    
</body>
</html>