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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Thông Tin Cán Bộ</strong></div>
    </div>
    </div>
     <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
<form class="form-inline" role="form">
</br></br>
<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputText" placeholder="Nhập họ và tên...">
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputText" placeholder="Nhập mã số nhân viên..">
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-4">
      <input type="email" class="form-control" id="inputText" placeholder="Nhập địa chỉ gmail...">
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputText" placeholder="Nhập địa chỉ gmail...">
    </div>
</br></br>
  </div>


<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Chức Vụ</label>
    <div class="col-sm-4">
      <input type="email" class="form-control" id="inputText" placeholder="Nhập chức vụ..">
    </div>
<label for="inputText" class="col-sm-2 control-label">Đơn Vị Công Tác</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputText"placeholder="Nhập đơn vịcông tác..">
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Ngày Sinh</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" id="inputText">
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính</label>
    <div class="col-sm-4">
      <label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1"> Nam
</label>
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox2" value="option2"> Nữ
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">CMND</label>
    <div class="col-sm-4">
      <input type="email" class="form-control" id="inputText" placeholder="Nhập số CMND.">
    </div>
<label for="inputText" class="col-sm-2 control-label">Địa Chỉ</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputText"placeholder="Nhập địa chỉ thường trú.">
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">TK Ngân hàng</label>
    <div class="col-sm-4">
      <input type="email" class="form-control" id="inputText" placeholder="Nhập TK ngân hàng..">
    </div>
<label for="inputText" class="col-sm-2 control-label">Chi Nhánh</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputText"placeholder="Nhập chi nhánh ngân hàng..">
    </div>
</br></br>
  </div>
</br>
</form>
</br>
	<button type="submit " onclick= "TroLai(); return false;"  class="btn btn-default">Trở Lại</button>
<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Cập Nhật</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    

<div id="Center_Div"> 
           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:20px;color:#009;">Cập Nhật Thông Tin Cá Nhân </h2>

<form id="signupForm1" class="form-horizontal">
</br></br>
<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="name"  placeholder="Nhập họ và tên..." minlength="6">
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="maso" placeholder="Nhập mã số sinh viên.."  minlength="8">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputEmail" class="col-sm-2 control-label">Email<span class="rq"> * </span> <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="email" class="form-control" name="gmail" id="email" placeholder="Nhập địa chỉ gmail...">
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="sdt" placeholder="Nhập số điện thoại..."  minlength="9">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Chức vụ <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="chucvu" placeholder="Nhập chức vụ..">
    </div>
<label for="inputText" class="col-sm-2 control-label">Đơn vị Công Tác<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="donvi" placeholder="Nhập đơn vị.">
    </div>
</br></br>
  </div>


<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Ngày Sinh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="date" id="ngaysinh">
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <label class="checkbox-inline">
  <input type="radio"  name="optionsRadios" id="nam"" value="option1"> Nam
</label>
<label class="checkbox-inline">
  <input type="radio"  name="optionsRadios"  id="nu" value="option2"> Nữ
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">CMND<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="cmnd" placeholder="Nhập số CMND."  minlength="9">
    </div>
<label for="inputText" class="col-sm-2 control-label">Địa Chỉ<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="diachi" placeholder="Nhập địa chỉ thường trú."  minlength="9">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">TK Ngân hàng<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number " id="tk" placeholder="Nhập TK ngân hàng.."  minlength="9">
    </div>
<label for="inputText" class="col-sm-2 control-label">Chi Nhánh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="chinhanh" placeholder="Nhập chi nhánh ngân hàng..">
    </div>
</br></br>
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

</br>
           </form>   
</div>
</div>   
           </form>   
</body>
</html>