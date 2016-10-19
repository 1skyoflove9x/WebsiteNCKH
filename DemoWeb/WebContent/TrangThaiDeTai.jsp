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

function TroLai()
		{
			
			location = "SV_ThongTinCaNhan.html"
		}
function Save()
		{
			alert("Chỉnh sửa thành công");
			location = "SV_ThongBao.html"
		}
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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Trạng Thái Đề Tài</strong></div>
    </div>
    </div>
    <input type="text" name="button" class="btn btn-primary" value="Đang Chờ Phê Duyệt">
     <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
</br>
<ul>
  <strong>CÁC QUY ĐỊNH VỀ TRẠNG THÁI</strong>
<ol>
</br>
  <li> Chưa đăng ký đề tài: Tài khoản chưa đăng ký đề tài NCKH</li></br>
  <li> Đang chờ phê duyệt thực hiện: Đề tài đang được chờ phê duyệt thực hiện</li></br>
   <li> Đã được phê duyệt thực hiện: Đề tài đã được phê duyệt tiến hành ký hợp đồng với phòng KH&CN</li></br>
 <li> Đang chờ gia hạn: Đề tài chờ phòng KH&CN hoặc giáo viên hưỡng dẫn duyệt</li></br>
 <li> Đã gia hạn: Đề tài được phòng KH&CN hoặc giáo viên hưỡng dẫn duyệt gia hạn</li></br>
 <li> Đang chờ duyệt hủy: Đề tài chờ phòng KH&CN hoặc giáo viên hưỡng dẫn duyệt</li></br>
 <li> Đã hủy đề tài: Đề tài được phòng KH&CN hoặc giáo viên hưỡng dẫn duyệt</li></br>
 <li> Đang chờ nghiệm thu: Đề tài nằm trong danh sách chờ nghiệm thu</li></br>
 <li> Đã nghiệm thu: Đề tài đã nghiệm thu</li></br>
</ol>
</ul>
</form>
    
    
</body>
</html>