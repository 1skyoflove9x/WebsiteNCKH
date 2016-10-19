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
   <div id="Center_Div" class="Center_Div"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Cấp Mã Đề Tài</strong></div>
    </div>
    </div>
<div class="form-group">
    <div class="col-sm-2">
<h><strong>Tìm Theo</strong></h>
    </div>
    <div class="col-sm-4">
     <select class="form-control">
  <option>Mã Đề Tài </option>
  <option>Tên Đề Tài</option>
  <option>Giáo Viên Hướng Dẫn</option>
  <option>Lĩnh Vực</option>
  <option>Đơn Vị</option>
</select>
  </div>
<div class="col-sm-6">
  <div class="input-group">
      <input type="text" class="form-control" placeholder="nhập đề tài muốn tìm...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Tìm</button>
      </span>
    </div>
</div>
</div>
</br></br>
 <form style=" border: groove;width:700px; height:700px;margin-left:15px; margin-right:15px;">	

 
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>GV Hướng Dẫn</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Ứng Dụng GPS và Sim 900A</td>
                  <td>Nguyễn Quốc Trường</td>
                  <td>ThS.Nguyễn Xoan</td>
<td>
<!-- Large modal -->
<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Cấp Mã</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <h2><strong>Mã Đề Tài Là CT1002 </strong></h2>
    </div>
  </div>
</div>

</td>
                </tr>
                <tr>
                 <td>2</td>
                  <td>Ứng dụng nước sạch nông thôn</td>
                  <td>Phạm Công Hậu</td>
                  <td>TS.Lê Vũ</td>
<td> <button class="btn btn-default" type="button" onclick="javascript:void(alert('Thành Công!!!'))">Cấp Mã</button></td>
                </tr>
                <tr>
                     <td>3</td>
                  <td>Thùng rác thông minh</td>
                  <td>Lý Say Xình</td>
                  <td>ThS.Trần Cung</td>
<td> <button class="btn btn-default" type="button" onclick="javascript:void(alert('Thành Công!!!'))">Cấp Mã</button></td>
                </tr>
<tr>
                 <td>4</td>
                  <td>Nghiên cứu về tạo lúa mới</td>
                  <td>Trần Trọng Trí</td>
                  <td>TS.Quan Vũ</td>
<td> <button class="btn btn-default" type="button" onclick="javascript:void(alert('Thành Công!!!'))">Cấp Mã</button></td>
                </tr>
<tr>
                 <td>5</td>
                  <td>Phát Triển Robot</td>
                  <td>Lê bảo</td>
                  <td>ThS.Triệu Vân</td>
<td> <button class="btn btn-default" type="button">Cấp Mã</button></td>
                </tr>
<tr>
                 <td>6</td>
                  <td>Công Nghệ Nano</td>
                  <td>Lê Quốc Trung Trực</td>
                  <td>PGS.TS Lưu Bị</td>
<td> <button class="btn btn-default" type="button">Cấp Mã</button></td>
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
</body>
</html>