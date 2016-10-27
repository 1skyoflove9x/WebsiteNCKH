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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Xem Mã Số Đề Tài</strong></div>
    </div>
    </div>
       <input type="text" name="button" class="btn btn-primary" value="Chưa Có Mã Số">
    <form style=" border: groove; margin-left:15px; margin-right:15px;">	
</br>
<div class="col-xs-12 col-md-2 ">
<strong> Họ Và Tên:</strong>
    </div>
<div class="col-xs-12 col-md-4 ">
Nguyễn Quốc Trường
    </div>
<div class="col-xs-12 col-md-2">
<strong>Mã Số</strong>
    </div>
<div class="col-xs-12 col-md-4  ">
14110425
    </div></br></br>

<div class="col-xs-12 col-md-2  ">
<strong> Khoa:</strong>
    </div>
<div class="col-xs-12 col-md-4 ">
Đào tạo chất lượng cao
    </div>
<div class="col-sm-2">
<strong>Lớp</strong>
    </div>
<div class="col-xs-12 col-md-2 ">
14110CL1
    </div></br></br>
<div class="col-xs-12 col-md-2  ">
<strong> Tên Đề Tài:</strong>
    </div>
<div class="col-xs-12 col-md-10  ">
<p>Ứng dụng định vị GPS và sim 900A để hỗ trợ người tham gia giao thông ở Tp. Hồ Chí Minh</p>
    </div></br></br>
<div class="col-xs-12 col-md-2">
<strong>Lý Do:</strong>
</div>
 <div class="col-xs-12 col-md-10 ">
<p>Đề tai đang chờ phê duyệt</p>
</div></br></br>
</form>
    
</body>
</html>