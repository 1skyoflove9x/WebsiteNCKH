<%@ page import="connectdatabase.User" %>
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
	$("#tb1").click(function(e) {
		//=======.load(url)================
		var url,data;
		
		url = "https://docs.google.com/document/d/15-zwTehY0-D3mKTVEkqpwWRb25kWzZ0b-5M1UkMfW7k/pub?embedded=true";
		//url = "files/file-001.php";
		$("#load").load(url);
		
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
   <div id="load"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Đề Tài Được Phân Công Phản Biện</strong></div>
    </div>
    </div>
<form style=" border: groove;width:100%; margin-left:1%; margin-right:1%;">	
          <h><strong>Danh sách đề tài được phân công phản biện</strong></h>
<div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>Thời Gian Phản Biện</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>CK1002</td>
                  <td>Ứng dụng sim 900A</td>
                  <td>Lý Say Xình</td>
                  <td>20/10/2016</td>
		<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
                
                <tr>
                 <td>2</td>
                  <td>CNT1009</td>
                  <td>Giải Thuật Bài Toán Mới </td>
                  <td>Trịnh Sảng</td>
                  <td>11/10/2016</td>
	<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
              </tbody>
            </table>
          </div>
          
</br></br></br>
<h><strong>Lịch phân công</strong></h>
<div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Thời Gian Phản Biện</th>
                  <th>Phòng</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>CK1002</td>
                  <td>Thùng rác thông minh</td>
                  <td>20/10/2016</td>
                  <td>A3-403</td>
	<td> <button type="button" class="btn btn-primary">Xuất lịch</button></td>
                </tr>
                <tr>
                 <td>2</td>
                  <td>CNT1009</td>
                  <td>Giải Thuật Bài Toán Mới </td>
                  <td>11/10/2016</td>
                  <td>Hội Trường 2</td>
	<td> <button type="button" class="btn btn-primary">Xuất Lịch</button></td>
                </tr>
              </tbody>
            </table>
          </div>
          
</form>

      
    </div>
</body>
</html>