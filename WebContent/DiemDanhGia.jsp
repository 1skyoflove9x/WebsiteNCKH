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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Điểm Đánh Giá Đề Tài</strong></div>
    </div>
    </div>
    
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Điểm đánh giá của Hội Đồng :</label>
    <div class="col-sm-8">
<select class="form-control">
  <option>Th.s </option>
  <option>Gs.</option>
  <option>PGs.</option>
  <option>Gv.</option>
  <option>Th.s</option>
</select>
    </div>
</br></br></br></br>
  </div>


 <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
</br>
<div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Thang Điểm :</label>
    <div class="col-sm-3">
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 100
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 10
</label>
    </div>
<label for="inputEmail3" class="col-sm-2 control-label">Xếp Loại</label>
    <div class="col-sm-4">
    <button type="button" class="btn btn-primary">Xuất Sắc</button> 
    </div>
</br></br>
 </div>
<div class="form-group">
    <span style=" color:blue;text-align: left;font-size: 18px">Điểm đánh giá chi tiết</span></br>
      <table class="table table-bordered">
 <tr><th>Stt</th><th>Nội dung đánh giá</th> <th>Số điểm đạt được</th><th>ghi chú</th></tr>
<tr>
<th> <p>1</p></th>
<th><p> đánh giá tổng quan về tình hình nghiên cứu</p></th>
<th><p>20</p></th>
<th> <p> chưa nêu cụ thể tình hình</p></th>
</tr>
<tr>
<th> <p>2</p></th>
<th><p> Lý do chọn đề tài</p></th>
<th><p>5</p></th>
<th> <p> cần nêu bật nên lý do chọn đề tài</p></th>
</tr>
<tr>
<th> <p>3</p></th>
<th><p> Mục tiêu chọn đề tài</p></th>
<th><p>20</p></th>
<th> <p> </p></th>
</tr>
<tr>
<th> <p>4</p></th>
<th><p> Phương pháp nghiên cứu</p></th>
<th><p>5</p></th>
<th> <p></p></th>
</tr>
<tr>
<th> <p>5</p></th>
<th><p>Góp phần về mặt  giáo dục, kinh tế - xã hội/p></th>
<th><p>20</p></th>
<th> <p> có tính cộng đồng</p></th>
</tr>
<tr>
<th> <p>6</p></th>
<th><p> Khả năng phát triển</p></th>
<th><p>10</p></th>
<th> <p> Chưa thực tế</p></th>
</tr>
<tr>
<th> <p>7</p></th>
<th><p> Khả năng phát triển</p></th>
<th><p>10</p></th>
<th> <p> Có thể nghiên cứu phát triển</p></th>
</tr>
<tr>
<th><p></p></th>
<th><p> Tổng</p></th>
<th><p>90</p></th>
<th><p></p></th>
</tr>
</table>
</br></br>
 </div>


</form>
           </form>  
</body>
</html>