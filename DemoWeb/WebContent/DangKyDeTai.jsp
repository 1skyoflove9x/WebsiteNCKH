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

          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Đăng Ký Đề Tài</strong></div>
    </div>
    </div>
    
                   
<form id="signupForm1" class="form-horizontal">
  <div class="form-control-group" style="margin-left:1%;">
    <label class="col-xs-12 col-md-12  ">Tên Đề Tài <span class="rq"> * </span></label>
     <div class="col-xs-12 col-md-12 ">
    <textarea type="text" class="form-control" rows="2" name="name" id="tendetai" minlength="20" placeholder="nhập tên đề tài"  required></textarea>
   </br>
    </div>

    <label class="col-xs-12 col-md-3  " for="name">Họ Tên Chủ Nhiệm <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
     <input type="text"  class="form-control" name="name" id="name" placeholder="Nhập tên chủ nhiệm"  minlength="6">
       </br>
    </div>
  
<label for="name" class="col-xs-12 col-md-3 ">Ngày Sinh</label>
    <div class="col-xs-12 col-sm-9  ">
      <input type="date" class="form-control" name="ngaysinh" id="ngaysinh">
       </br>
    </div>
   
    <label class="col-xs-12 col-md-3 " for="name">Đơn Vị</label>
    <div class="col-xs-12 col-md-9">
     <input type="text"  class="form-control" name="name" id="donvi" placeholder="Nhập tên đơn vị" minlength="6">
       </br>
    </div>
<label class="col-xs-12 col-md-3">Ngành</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control"  name="name" id="nganh" placeholder="Nhập tên ngành" minlength="6">
      </br>
    </div>

    <label class="col-xs-12 col-md-3" >Email</label>
    <div class="col-xs-12 col-md-9">
      <input type="email" class="form-control"  name="email" id="email" placeholder="nhập địa chỉ email">
      </br>
    </div>
<label class="col-xs-12 col-md-3">Giới tính</label>
    <div class="col-xs-12 col-md-9">
     <label class="checkbox-inline">
  <input type="radio" id="nam"  name="optionsRadios"  value="option1"> Nam
</label>
<label class="checkbox-inline">
  <input type="radio" id="nu"   name="optionsRadios" value="option2"> Nữ
  </label>
  </br></br>
    </div>

    <label class="col-xs-12 col-md-3">Lớp</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="name" id="lop" placeholder="nhập lớp sinh viên theo học" minlength="4">
      </br>
    </div>
<label  class="col-xs-12 col-md-3">Niên Khóa</label>
    <div class="col-xs-12 col-md-9">
      <input type="Number" class="form-control" name="name" id="nienkhoa" placeholder="Nhập niên khóa học của sinh viên" minlength="3">
   </br>
    </div>
    <label  class="col-xs-12 col-md-3">Giáo Viên Hướng Dẫn <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="name" id="giaovien" placeholder="Nhập tên GV + học hàm hoặc học vị" minlength="6">
    </br>
    </div>

    <label class="col-xs-12 col-md-3">Lĩnh Vực Nghiên Cứu</label>
    <div class="col-xs-12 col-md-9">
     <label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Tự Nhiên
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Xã Hội
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Giáo Dục
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Kỹ Thuật
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Nông Lâm Ngư
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Y Dược
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Môi Trường
</label>
</br></br>
    </div>

    <label class="col-xs-12 col-md-3">Loại Hình Cơ Bản</label>
    <div class="col-xs-12 col-md-9">
     <label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Cơ Bản
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Ứng Dụng
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Triển Khai
</label>
</br></br>
    </div>

    <label  class="col-xs-12 col-md-3">Cơ Quan Chủ Trì</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="name" id="coquan" placeholder="Nhâp tên đơn vị tổ chức NCKH">
      </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tình Hình Trong Nước</label>
    <div class="col-xs-12 col-md-9">
      <textarea class="form-control" rows="3" name="name" id="tinhhinhtrongnuoc" placeholder="Nhập các vấn đề liên quan đến đề tài có ở trong nước"></textarea> 
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tình Hình Ngoài Nước</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="name" id="tinhhinhngoainuoc" placeholder="Nhập các vấn đề liên quan đến đề tài có ở ngoài nước" minlength="20"></textarea> 
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Các Công Trình Liên Quan</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="name" id="caccongtrinh" placeholder="Những sản phẩm đã có trên thị trường"></textarea> 
   </br>
    </div>

    <label  class="col-xs-12 col-md-3">Tính Cấp Thiết</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="name" id="tinhcapthiet" placeholder="Nhập tính cấp thiết của ứng dụng"></textarea> 
    </br>
    </div>

    <label class="col-xs-12 col-md-3">Mục Tiêu Đề Tài</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" name="name" id="muctieu" rows="3" placeholder="Mục Tiêu Đề Tài"  minlength="6"></textarea> 
    </br>
    </div>

    <label  class="col-xs-12 col-md-3">Phương Pháp Nghiên Cứu</label>
    <div class="col-xs-12 col-md-9">
       <textarea class="form-control" rows="3" name="name" id="phuongphap" placeholder="Nhập Phương Pháp Nghiên Cứu"  minlength="6"></textarea> 
    </br>
    </div>

    <label class="col-xs-12 col-md-12">Nôi Dung Nghiên Cứu Và Tiến Độ Thực Hiện</label>
    <div class="col-xs-12 col-md-12">
    <table class="table table-bordered">
 <tr><th>Stt</th><th>Nội dung công việc</th> <th>Sản phẩm phải đạt</th><th>Thơi Gian</th><th>Người Thực Hiện</th> </tr>
<tr>
<th> <input type="number" class="form-control" id="inputEmail3"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập nội dung công việc"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập sản phẩm phải đạt"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập thời gian( số tháng)"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập người thực hiện"></th>
</tr>
<tr>
<th> <input type="number" class="form-control" id="inputEmail3"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập nội dung công việc"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập sản phẩm phải đạt"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập thời gian( số tháng)"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập người thực hiện"></th>
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
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Mẫu
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Vật Liệu
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Thiết Bị Máy Móc
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Phương Pháp
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Giống Cây
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Giống Gia Súc
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Quy Trình Công Nghệ
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Báo Cáo Phân Tích
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Tiêu Chuẩn
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Quy Phạm
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Sơ Đồ
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Chương Trình Máy Tính
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Tư Liệu Dự Báo
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Đề Án
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Luận Chứng Kinh Tế
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Bản Kiến Nghị
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Sản Phâm Khác
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Dây Chuyền Công Nghệ
</label>
</br></br>
    </div>

    <label class="col-xs-12 col-md-12">Tên Sản Phẩm, Số Lượng Và Yêu Cầu Khoa Học Đối Với Sản Phẩm</label></br>
    <table class="table table-bordered">
 <tr><th>Stt</th><th>Tên sản phẩm</th> <th>Số lượng</th><th>Yêu cầu khoa học</th> </tr>
<tr>
<th> <input type="number" class="form-control" id="inputEmail3"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập sản phẩm"></th>
<th> <input type="number" class="form-control" id="inputEmail3"></input></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập yêu cầu khoa học"></th>
</tr>
<tr>
<th> <input type="number" class="form-control" id="inputEmail3"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập sản phẩm"></th>
<th> <input type="number" class="form-control" id="inputEmail3"></input></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập yêu cầu khoa học"></th>
</tr><button type="add" class="btn btn-default">Thêm sản phẩm</button>
  </table>

    <label class="col-xs-12 col-md-3">Địa Chỉ ứng Dụng</label>
    <div class="col-xs-12 col-md-9">
      <input type="text" class="form-control" name="address"  id="diachiungdung" placeholder="nhập địa chỉ ứng dụng của sản phẩm">
   </br>
    </div>

 <label class="col-xs-12 col-md-3">Kinh Phí Dự Trù</label>
    <div class="col-xs-12 col-md-9">
      <input type="number" class="form-control" name="name" id="dutrukinhphi">
      </br>
    </div>
    <table class="table table-bordered">
 <tr><th>Stt</th><th>Công việc</th> <th>Thành tiền</th><th>Ghi chú</th> </tr>
<tr>
<th> <input type="number" class="form-control" id="inputEmail3"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập công việc"></th>
<th> <input type="number" class="form-control" id="inputEmail3"></input></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập ghi chú "></th>
</tr>
<tr>
<th> <input type="number" class="form-control" id="inputEmail3"></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập công việc"></th>
<th> <input type="number" class="form-control" id="inputEmail3"></input></th>
<th> <input type="text" class="form-control" id="inputEmail3" placeholder="Nhập ghi chú "></th>
</tr><button type="add" class="btn btn-default">Thêm kinh phí</button>
  </table>

    <label class="col-xs-12 col-md-12">File đính kèm</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">load các file báo cáo đính kém</p></br>
								<div class="col-xs-12 col-md-12">
									<div class="checkbox">
										<label>
											<input type="checkbox" id="agree" name="agree" value="agree" required/>Tôi đã đồng ý cập nhật
										</label>
									</div>
								</div>
						
</label>
</br></br>
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở Về</button>
        <button  type="submit"  class="btn btn-primary" name="signup" value="Đăng ký" onclick="javascript:void(alert('Thành Công!!!'))">Cập nhật</button>
      </div>
   </form>  
    
    
<body>

</body>
</html>