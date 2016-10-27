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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Nộp Báo Cáo</strong></div>
    </div>
    </div>
    
    <form style=" border: groove; width:98%;margin-left:1%; margin-right:1%">	
</br>
  <div class="form-control-group" style="margin-left:1%;">
<div class="col-xs-12 col-md-6 ">
<strong> Họ Và Tên:Nguyễn Quốc Trường</strong>
    </div>
    </br></br>
<div class="col-xs-12 col-md-6 ">
<strong>Mã Số:14110425</strong>
    </div>
    </br></br>
<div class="col-xs-12 col-md-6 ">
<strong> Khoa:Đào tạo chất lượng cao</strong>
    </div>
	</br></br>
<div class="col-xs-12 col-md-6 ">
<strong>Lớp:14110CL1</strong>
    </div>
    </br></br>
<div class="col-xs-12 col-md-12 ">
<strong> Tên Đề Tài:Ứng dụng định vị GPS và sim 900A để hỗ trợ người tham gia giao thông ở Tp. Hồ Chí Minh</strong>
    </div>
    </br></br></br>
    <label class="col-xs-12 col-md-12">File báo cáo</label>
    </br>
    <div class="col-xs-12 col-md-12">
    <input type="file" id="exampleInputFile">
    <p class="help-block">load các file báo cáo đính kém</p>
	</div>
	</br></br></br>
	<div class="col-xs-12 col-md-12">
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Tôi đồng ý  nộp báo cáo đề tài
</label>
</br></br>
  </div>
  <div  class="col-xs-12 col-md-4 col-md-offset-8 ">
<button type="submit  " class="btn btn-primary" onclick="javascript:void(alert('Thành Công!!!'))">Gửi</button>
	<button type="back" class="btn btn-default" >Trở Lại</button>  
    </div> 
    </br> 
    </div>
    </form>
    
</body>
</html>