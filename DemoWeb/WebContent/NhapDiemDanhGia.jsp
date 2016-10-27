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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Chấm Điểm Đánh Giá Đề Tài</strong></div>
    </div>
    </div>
    <span style=" color:blue;text-align: left;font-size: 1.9rem">Điểm đánh giá chi tiết</span></br>
      <table class="table table-bordered" >
 <tr><th>Stt</th><th>Nội dung đánh giá</th> <th>Số điểm đạt được</th><th>ghi chú</th></tr>
<tr>
<th> <p>1</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th> <p>2</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th> <p>3</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th> <p>4</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th> <p>5</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th> <p>6</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th> <p>7</p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
<tr>
<th><p></p></th>
<th> <input type="text" class="form-control"  name="name" id="noidun" placeholder="Nhập nội dung" minlength="6"></th>
<th> <input type="nuber" class="form-control"  name="number" id="diem" placeholder="Nhập điểm" minlength="1"></th>
<th>  <input type="text" class="form-control"  name="name" id="ghichu" placeholder="ghichu"></th>
</tr>
</table>
</br></br>
 </div>


</form>
           </form>  
</body>
</html>