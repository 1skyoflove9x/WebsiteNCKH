<%@ page import="connectdatabase.User" %>
<%@ page import="connectdatabase.ThongTinCaNhan" %>
<%@ page import="connectdatabase.ShowTTCaNhan" %>
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
<%!
String maso=new  String("14110425");
ThongTinCaNhan TT = ShowTTCaNhan.getTT(maso);
String HoVaTen=TT.getHoVaTen();
String Email=TT.getEmail();
String Khoa=TT.getKhoa();
String Nganh=TT.getNganh();
String NgaySinh=TT.getNgaySinh();
String CMND=TT.getCMND();
String TkNganHang=TT.getTkNganHang();
String MaSo=TT.getMaSo();
String SDT=TT.getSDT();
String Lop=TT.getLop();
String NienKhoa=TT.getNienKhoa();
String GioiTinh=TT.getGioiTinh();
String DiaChi=TT.getDiaChi();
String ChiNhanh=TT.getChiNhanh();
%>


   <div id="Center_Div" class="Center_Div"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Thông Tin Sinh Viên</strong></div>
    </div>
    </div>
  <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
<form class="form-inline" role="form" >
</br></br>
<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên</label>
    <div class="col-sm-4">
<%=HoVaTen %>
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số</label>
    <div class="col-sm-4">
 <%=MaSo %>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-4">
<%=Email %>
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT</label>
    <div class="col-sm-4">
<%=SDT %>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Khoa</label>
    <div class="col-sm-4">
<%=Khoa %>
    </div>
<label for="inputText" class="col-sm-2 control-label">Lớp</label>
    <div class="col-sm-4">
<%=Lop %>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Ngành</label>
    <div class="col-sm-4">
<%=Nganh %>
    </div>
<label for="inputText" class="col-sm-2 control-label">Niên Khóa</label>
    <div class="col-sm-4">
<%=NienKhoa %>
    </div>
</br></br>
  </div>

<div class="form-group">
<label for="inputText" class="col-sm-2 control-label">Ngày Sinh</label>
    <div class="col-sm-4">
<%=NgaySinh %>
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính</label>
    <div class="col-sm-4">
<%=GioiTinh %>
  </div>
  </br></br>
  </div>
<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">CMND</label>
    <div class="col-sm-4">
<%=CMND %>
    </div>
<label for="inputText" class="col-sm-2 control-label">Địa Chỉ</label>
    <div class="col-sm-4">
<%=DiaChi %>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">TK Ngân hàng</label>
    <div class="col-sm-4">
<%=TkNganHang %>
    </div>
<label for="inputText" class="col-sm-2 control-label">Chi Nhánh</label>
    <div class="col-sm-4">
<%=ChiNhanh %>
    </div>
</br></br>
  </div>

</form>
</br>
	<button type="submit " onclick= "TroLai(); return false;"  class="btn btn-default">Trở Lại</button>
<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Cập Nhật</button>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    

<div id="Center_Div"> 
           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:20px;color:#009;"> Cập Nhật Thông Tin Cá Nhân </h2>

<form id="signupForm1" method="post" class="form-horizontal" action="">
</br></br>
<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên <span class="rq"> * </span></label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="name" id="name"  value="<%=HoVaTen %>" minlength="6"> 
    
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="maso" value="<%=MaSo %>"  minlength="8">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputEmail" class="col-sm-2 control-label">Email<span class="rq"> * </span> <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="email" class="form-control" name="gmail" id="email" value="<%=Email %>">
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="number" id="sdt" placeholder="Nhập số điện thoại..."  minlength="9">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Khoa <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="khoa" placeholder="Nhập khoa trực thuộc.." minlength="5">
    </div>
<label for="inputText" class="col-sm-2 control-label">Lớp<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="lop" placeholder="Nhập lớp.." minlength="2">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Ngành<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="nghanh" placeholder="Nhập ngành đang học.."  minlength="10">
    </div>
<label for="inputText" class="col-sm-2 control-label">Niên Khóa <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="inputText" name="number " id="nienkhoa" placeholder="Nhập niên khóa..">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Ngày Sinh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="date" id="ngaysinh" date= "mm/dd/yyyy">
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <label class="checkbox-inline">
  <input type="radio" name="optionsRadios" id="nam"" value="option1"> Nam
</label>
<label class="checkbox-inline">
  <input type="radio"  name="optionsRadios" id="nu" value="option2"> Nữ
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
      <input type="text" class="form-control" name="name" id="chinhanhnh" placeholder="Nhập chi nhánh ngân hàng.." minlength="9">
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
</div>
</div>  


</body>
</html>
