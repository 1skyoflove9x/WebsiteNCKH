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
    <script type="text/javascript">
	$(document).ready(function(){

			var url,data;
			
			
			$("#tb1").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "https://docs.google.com/document/d/15-zwTehY0-D3mKTVEkqpwWRb25kWzZ0b-5M1UkMfW7k/pub?embedded=true";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
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

<div id="Center_Div">

<div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Trang Chủ</strong></div>
    </div>
    </div>
<form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
<table class="table table-striped">
              <thead>
                <tr>
                  <th>Số lượng đề tài hưỡng dẫn</th>
                  <th>Số lượng đề tài phản biện</th>
                  <th>Số lượng đề tài phê duyệt</th>
 	<th>Số lượng chờ duyệt hủy</th>
	<th>Số lượng chờ duyệt Đăng Ký</th>
                </tr>

  <tr>
                   <th>2</th>
                  <th>2</th>
                  <th>2</th>
	<th>6</th>
	<th>20</th>
                </tr>
              </thead>
              <tbody>
</table>
</form></br>

 <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>Phân Công</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>CNT1010</td>
                  <td>Ứng Dụng GPS và Sim 900A</td>
                  <td>Nguyễn Quốc Trường</td>
                  <td>Đang chờ nghiệm thu</td>
	<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
                <tr>
                 <td>2</td>
                  <td>CTT1001</td>
                  <td>Ứng dụng nước sạch nông thôn</td>
                  <td>Phạm Công Hậu</td>
                  <td>Đang chờ phê duyệt</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
                <tr>
                     <td>3</td>
                  <td>CK1002</td>
                  <td>Thùng rác thông minh</td>
                  <td>Lý Say Xình</td>
                  <td>Phản Biện ngày 20/10/2016</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
<tr>
                 <td>4</td>
                  <td>NN1003</td>
                  <td>Nghiên cứu về tạo lúa mới</td>
                  <td>Trần Trọng Trí</td>
                  <td>Đang chờ hủy</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
<tr>
                 <td>5</td>
                  <td>CKDT1021</td>
                  <td>Phát Triển Robot</td>
                  <td>Lê bảo</td>
                  <td>Yêu cầu hướng dẫn</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
<tr>
                 <td>6</td>
                  <td>CNT1032</td>
                  <td>Công Nghệ Nano</td>
                  <td>Lê Quốc Trung Trực</td>
                  <td>Yêu cầu Hủy</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
              </tbody>
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
          </div>
</form>
           </form> 
		
</div>


</body>
</html>