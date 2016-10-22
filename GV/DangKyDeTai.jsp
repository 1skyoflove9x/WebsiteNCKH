<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Quản Lý Đề Tài Nghiên Cứu Khoa Học</title><meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" type="text/css" href="../ThuVien/css/bootstrap.css"/>
    <script src="../ThuVien/Jquery/jquery-1.11.3.min.js"></script>
     <script src="../ThuVien/Js/bootstrap.min.js"></script>
    <script src="../ThuVien/Jquery/jquery.bootstrap-autohidingnavbar.js"></script>
<script src="../ThuVien/Jquery/jquery.validate.min.js"></script> 
<script type="text/javascript" src="../ThuVien/Jquery/localization/messages_vi.js"></script>
<script src="../ThuVien/Js/script.js"></script>
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

	function validatetext(id){
		if($("#"+id).val()==null || $("#"+id).val()=="1")
			{
				alert("error!!");
				return false;
			}
		
	}
	$(document).ready(function()
		{
			$("contactbtn").click(function()
					{
						validatetext("contactname");
					});
		}		
	);

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
    
                   

  <div class="form-group has-success">
  <label class="control-label" for="inputSuccess1">Tên Đề Tài</label>
  <input type="text" class="form-control" id="inputSuccess1" aria-describedby="helpBlock2">
  <span id="helpBlock2" class="help-block">Hợp Lệ !!</span>
</div>

<div class="panel-body">

<form method="post" id="contactform" action="" role ="form">
<div class="form-group">
<label for="contactname" >Họ Tên Chủ Nhiệm</label>
<input type="text" class="form-control input-lg" id="contactname" placeholder="nhập họ tên">
<span id="helpBlock" class="help-block">Nhập Họ và Tên của bạn vào!!!</span>
</div>
</form>
</div>
<label class="col-sm-4 control-label" for="name">Giới Tính</label>
<div class="radio">
<label>
	<input type="radio" name="nameRadios" id="idRadios" value="valueRadios">
	Nam
</label>
<label>
	<input type="radio" name="nameRadios" id="idRadios" value="valueRadios">
	Nu
</label>
</div>

<div class="form-inline">
    <label class="col-sm-3 control-label" for="name" class="sr-only">Đơn Vị</label>
    <div class="col-sm-4">
     <input type="text"  class="form-control input-sm" name="name" id="donvi" placeholder="Nhập tên đơn vị" minlength="6">
    </div>
<label for="inputEmail3" class="col-sm-2 control-label">Ngày Sinh</label>
    <div class="col-sm-3">
      <input type="date" class="form-control"  id="inputEmail3">
    </div>
</br></br></br>
  </div>


  <div class="form-actions">
  
<form class="form-horizontal" method="post" action="" role="form">
<div class="form-group">
    <label class="col-sm-3 control-label" for="email">Email</label>
    <div class="col-sm-4">
      <input type="email" class="form-control"  name="email" id="email" placeholder="nhập địa chỉ email">
    </div> 
<label for="inputEmail3" class="col-sm-2 control-label" class="sr-only">Giới tính</label>
    <div class="col-sm-3">
     <label class="checkbox-inline">
  <input type="radio" id="nam"  name="optionsRadios"  value="option1"> Nam
</label>
<label class="checkbox-inline">
  <input type="radio" id="nu"   name="optionsRadios" value="option2"> Nữ
  </label>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Lớp</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="lop" placeholder="nhập lớp sinh viên theo học">
    </div>
<label for="inputEmail3" class="col-sm-2 control-label">Niên Khóa</label>
    <div class="col-sm-3">
      <input type="Number" class="form-control" name="name" id="nienkhoa" placeholder="Nhập niên khóa học của sinh viên">
    </div>
</br></br>
 </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Giáo Viên Hướng Dẫn <span class="rq"> *</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" name="name" id="giaovien" placeholder="Nhập tên GV + học hàm hoặc học vị" minlength="6">
    </div>
</br></br>
  </div>


<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Lĩnh Vực Nghiên Cứu</label>
    <div class="col-sm-9">
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
</label></br>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Nông Lâm Ngư
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Y Dược
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Môi Trường
</label>
    </div>
</br></br>
  </div>
<div class="form-group">
<label class="col-sm-3 control-label" for="name">Loại Hình</label>
</div>
<select>
<option>Cơ Bản</option>
<option>Ứng Dụng</option>
<option>Triển Khai</option>
</select>
</br></br>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Cơ Quan Chủ Trì</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" name="name" id="coquan" placeholder="Nhâp tên đơn vị tổ chức NCKH">
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Tình Hình Trong Nước</label>
    <div class="col-sm-9">
      <textarea class="form-control" rows="3" name="name" id="tinhhinhtrongnuoc" placeholder="Nhập các vấn đề liên quan đến đề tài có ở trong nước"></textarea> 
    </div>
</br></br></br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Tình Hình Ngoài Nước</label>
    <div class="col-sm-8">
       <textarea class="form-control" rows="3" name="name" id="tinhhinhngoainuoc" placeholder="Nhập các vấn đề liên quan đến đề tài có ở ngoài nước" minlength="20"></textarea> 
    </div>
</br></br></br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Các Công Trình Liên Quan</label>
    <div class="col-sm-8">
       <textarea class="form-control" rows="3" name="name" id="caccongtrinh" placeholder="Những sản phẩm đã có trên thị trường"></textarea> 
    </div>
</br></br></br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Tính Cấp Thiết</label>
    <div class="col-sm-8">
       <textarea class="form-control" rows="3" name="name" id="tinhcapthiet" placeholder="Nhập tính cấp thiết của ứng dụng"></textarea> 
    </div>
</br></br></br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Mục Tiêu Đề Tài</label>
    <div class="col-sm-8">
       <textarea class="form-control" name="name" id="muctieu" rows="3" placeholder="Mục Tiêu Đề Tài"></textarea> 
    </div>
</br></br></br></br>
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Phương Pháp Nghiên Cứu</label>
    <div class="col-sm-8">
       <textarea class="form-control" rows="3" name="name" id="phuongphap" placeholder="Nhập Phương Pháp Nghiên Cứu"></textarea> 
    </div>
</br></br></br></br>
  </div>

<div class="form-group"  style="margin-left:20px;margin-right:10px;">
    <label for="exampleInputEmail1">Nôi Dung Nghiên Cứu Và Tiến Độ Thực Hiện</label>
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
</tr> <button type="add" class="btn btn-default">Thêm Công Việc</button>
  </table>
  </div>

<div class="form-group" >
    <label for="inputEmail3" class="col-sm-2 control-label">Loại Sản Phẩm</label>
    <div class="col-sm-10">
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
</label></br></br>
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
</label></br></br>
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
</label></br></br>
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
</label></br></br>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Sản Phâm Khác
</label>
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Dây Chuyền Công Nghệ
</label>
    </div>
  </div>
</br>
<div class="form-group" style="margin-left:20px;margin-right:10px;">
    <label for="exampleInputEmail1">Tên Sản Phẩm, Số Lượng Và Yêu Cầu Khoa Học Đối Với Sản Phẩm</label></br>
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
  </div>

<div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Địa Chỉ ứng Dụng</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="address"  id="diachiungdung" placeholder="nhập địa chỉ ứng dụng của sản phẩm">
    </div>
</div>
</br></br>
<div class="form-group" style="margin-left:20px;margin-right:10px;">
 <label for="inputEmail3" class="col-sm-4 control-label">Kinh Phí Dự Trù</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" name="name" id="dutrukinhphi">
    </div></br>
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
  </div>
   <div class="form-group" style="margin-left:20px;">
    <label for="exampleInputFile">File đính kèm</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">load các file báo cáo đính kém</p></br>
    </div>
<label>
 <input type="checkbox" value="">
  Tôi đồng ý đăng ký đề tài
</label>
</br></br>
 
  
  </form>
            
  <button type="button" id="contactbtn" class="btn btn-default"onclick= "Save(); return true;">Đăng Ký</button>
	<button type="reset" class="btn btn-default"onclick= "TroLai(); return false;">Trở Lại</button>   
      </div>
   </form>  
<footer >
	<div class="container">
	<div class="row">
	<p>This is Footer</p>
	
	<div class="col-sm-5">@Copyright HCMUTE 2016.</div>
	<div class="col-sm-7">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="index.html">Blog</a></li>
			<li><a href="index.html">Forum</a></li>
			<li><a href="index.html">Link</a></li>
		</ul>
	</div>
	</div>
	</div>
	</div>
</footer>


    
<body>

</body>
</html>