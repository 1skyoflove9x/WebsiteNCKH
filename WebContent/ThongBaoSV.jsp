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
$(document).ready(function(){

 var url,data;
$("#tb1").click(function(e) {
	//=======.load(url)================
	var url,data;
	
	url = "https://docs.google.com/document/d/1n-fIkgIOj5rDOyNpMSXukG-ctDBBrXS7EgAxns69B14/pub?embedded=true";
	//url = "files/file-001.php";
	$("#Center_Div").load(url);
	
});
$("#tb2").click(function(e) {
	//=======.load(url)================
	var url,data;
	
	url = "https://docs.google.com/document/d/1vsQ4dDQmYugAS__lkApEHB7tLfI75jGpkhOxCewGTzM/pub?embedded=true";
	//url = "files/file-001.php";
	$("#Center_Div").load(url);
	
});
$(document).on('click', '.btn_remove', function(){  
    var button_id = $(this).attr("id");   
    $('#row'+button_id+'').remove();  
}); 
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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Thông Tin Sinh Viên</strong></div>
    </div>
    </div>
    

		<table class="table table-bordered" style="margin-top:15px;" border =1 style ="cellspacing=10; cellpadding=20" align ="center" width = "700px;" height = "400px">
				<tr>
				<th>Tiêu Đề</th>
				<th>Ngày Gửi</th>
				 </tr>
				<tr>
				<td><div id="tb1"><a href = "#">Mẫu đơn đăng ký đề tài nghiên cứu khoa học năm 2017</a></div></td>
				<td>05/09/2016</td>
				</tr>
								<tr>
				<td><div id="tb2"><a href = "#">Mẫu giấy đề nghị thanh toán kinh phí năm 2017</a></div></td>
				<td>04/08/2016</td>
				</tr>
				<tr>
				<td><div id="tb3"><a href = "#">Biểu mẫu đăng ký đề tài nghiên cứu khoa học năm 2016</a></div></td>
				<td>26/07/2016</td>
				</tr>
				<tr>
				<td><div id="tb4"><a href = "#">Giới Thiệu về đăng ký đề tài nghiên cứu khoa học năm 2016</a></div></td>
				<td>09/05/2016</td>
				</tr>
				<tr>
				<td><div id="tb5"><a href = "#">Danh sách đề tài nghiên cứu khoa học năm 2016</a></div></td>
				<td>30/01/2016</td>
				</tr>
				<tr>
				<td><div id="tb2"><a href = "#">Thông báo về việc ký hợp đồng NCKH năm 2015</a></div></td>
				<td>15/12/2016</td>
				</tr>
				<tr>
				<td><div id="tb2"><a href = "#">Kết quả các đề tài nghiên cứu khoa học năm 2015</a></div></td>
				<td>28/10/2016</td>
				</tr>

	</table>

<ul class="pagination" style="margin:auto; float:right; margin-right:10px; margin-bottom:12px;; margin-top:15px">
  <li><a href="#"><<</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">>></a></li>
</ul>

    <br/>
    

</body>
</html>