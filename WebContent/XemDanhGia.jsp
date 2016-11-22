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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Xem Đánh Giá</strong></div>
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

 
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>GV Hướng Dẫn</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>CNT1010</td>
                  <td>Ứng Dụng GPS và Sim 900A</td>
                  <td>Nguyễn Quốc Trường</td>
                  <td>ThS.Nguyễn Xoan</td>
                  <td> 
      <button id="xem" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Xem Đánh Giá</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:20px;color:#009;">Xem Ý kiến đánh giá </h2>
           <h><strong>Đề tài:Ứng Dụng GPS và Sim 900A</strong> </h>
           </br></br>
<form id="registration-form" class="form-horizontal">
    <textarea class="form-control" rows="5" name="name" id="ykien" minlength="9"   placeholder="Chưa khả thi" disabled></textarea>
  </br>
           </form>   
           
<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở Về</button>
      </div>
  </div>
  </div>
  </div>
     

</td>
                </tr>
                <tr>
                 <td>2</td>
                  <td>CTT1001</td>
                  <td>Ứng dụng nước sạch nông thôn</td>
                  <td>Phạm Công Hậu</td>
                  <td>TS.Lê Vũ</td>
                   <td> <button type="button" class="btn btn-primary">Xem Đánh Giá</button></td>
                </tr>
                <tr>
                     <td>3</td>
                  <td>CK1002</td>
                  <td>Thùng rác thông minh</td>
                  <td>Lý Say Xình</td>
                  <td>ThS.Trần Cung</td>
                   <td> <button type="button" class="btn btn-primary">Xem Đánh Giá</button></td>
                </tr>
<tr>
                 <td>4</td>
                  <td>NN1003</td>
                  <td>Nghiên cứu về tạo lúa mới</td>
                  <td>Trần Trọng Trí</td>
                  <td>TS.Quan Vũ</td>
                   <td> <button type="button" class="btn btn-primary">Xem Đánh Giá</button></td>
                </tr>
<tr>
                 <td>5</td>
                  <td>CKDT1021</td>
                  <td>Phát Triển Robot</td>
                  <td>Lê bảo</td>
                  <td>ThS.Triệu Vân</td>
                   <td> <button type="button" class="btn btn-primary">Xem Đánh Giá</button></td>
                </tr>
<tr>
                 <td>6</td>
                  <td>CNT1032</td>
                  <td>Công Nghệ Nano</td>
                  <td>Lê Quốc Trung Trực</td>
                  <td>PGS.TS Lưu Bị</td>
                   <td> <button type="button" class="btn btn-primary">Xem Đánh Giá</button></td>
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
<%
User user =(User) session.getAttribute("user");
if(user.getQuyen()=="lanhdao")
{
}
else
{
	return;
}
%>

        <button id="xem" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg1">Gửi Đánh Giá</button>

<div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    

<div id="Center_Div"> 
           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:20px;color:#009;">Gửi ý kiến đánh giá </h2>

<form id="registration-form" class="form-horizontal"  method="get">
    <textarea class="form-control" rows="5" name="ykienname" id="ykien" placeholder="nhập ý kiến đánh giá"  minlength="9"></textarea>
  </br>
  <h><strong>Đánh giá về đề tài:</strong></h>
  </br>
   <select class="form-control">
  <option>Ứng dụng sim 900A</option> 
  <option>Giải thuật bài toán</option>
</select>
<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở Về</button>
        <button type="submit" class="btn btn-primary"  name="submit" id="submit" onclick="javascript:void(alert('Thành Công!!!'))">Gửi</button>
      </div>
           </form>   
          </div>
</form>
</body>
</html>