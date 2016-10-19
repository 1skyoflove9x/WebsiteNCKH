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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Thay Đổi Trạng Thái Đề Tài</strong></div>
    </div>
    </div>
 <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
	<th>Trạng Thái</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>CNT1010</td>
                  <td>Ứng Dụng GPS và Sim 900A</td>
<td>  <select class="form-control">
  <option>Đang chờ phê duyệt</option> 
  <option>Đã phê duyệt</option>
  <option>Đang chờ hủy</option>
  <option>Đã hủy</option>
  <option>Đang chờ gia hạn</option>
 <option>Đã gia hạn</option>
 <option>Đang  chờ nghiệm thu</option>
<option>Đang  nghiệm thu</option>
</select>
</td>
                </tr>
                <tr>
                 <td>2</td>
                  <td>CTT1001</td>
                  <td>Ứng dụng nước sạch nông thôn</td>
             <td>  <select class="form-control">
  <option>Đang chờ phê duyệt</option>
  <option>Đã phê duyệt</option>
  <option>Đang chờ hủy</option>
  <option>Đã hủy</option>
  <option>Đang chờ gia hạn</option>
 <option>Đã gia hạn</option>
 <option>Đang  chờ nghiệm thu</option>
<option>Đang  nghiệm thu</option>
</select>
</td>
                </tr>
                <tr>
                     <td>3</td>
                  <td>CK1002</td>
                  <td>Thùng rác thông minh</td>
              <td>  <select class="form-control">
  <option>Đang chờ phê duyệt</option>
  <option>Đã phê duyệt</option>
  <option>Đang chờ hủy</option>
  <option>Đã hủy</option>
  <option>Đang chờ gia hạn</option>
 <option>Đã gia hạn</option>
 <option>Đang  chờ nghiệm thu</option>
<option>Đang  nghiệm thu</option>
</select>
</td>
                </tr>
<tr>
                 <td>4</td>
                  <td>NN1003</td>
                  <td>Nghiên cứu về tạo lúa mới</td>
                 <td>  <select class="form-control">
  <option>Đang chờ phê duyệt</option>
  <option>Đã phê duyệt</option>
  <option>Đang chờ hủy</option>
  <option>Đã hủy</option>
  <option>Đang chờ gia hạn</option>
 <option>Đã gia hạn</option>
 <option>Đang  chờ nghiệm thu</option>
<option>Đang  nghiệm thu</option>
</select>
</td>
                </tr>
<tr>
                 <td>5</td>
                  <td>CKDT1021</td>
                  <td>Phát Triển Robot</td>
                  <td>  <select class="form-control">
  <option>Đang chờ phê duyệt</option>
  <option>Đã phê duyệt</option>
  <option>Đang chờ hủy</option>
  <option>Đã hủy</option>
  <option>Đang chờ gia hạn</option>
 <option>Đã gia hạn</option>
 <option>Đang  chờ nghiệm thu</option>
<option>Đang  nghiệm thu</option>
</select>
</td>
                </tr>
<tr>
                 <td>6</td>
                  <td>CNT1032</td>
                  <td>Công Nghệ Nano</td>
               <td>  <select class="form-control">
  <option>Đang chờ phê duyệt</option>
  <option>Đã phê duyệt</option>
  <option>Đang chờ hủy</option>
  <option>Đã hủy</option>
  <option>Đang chờ gia hạn</option>
 <option>Đã gia hạn</option>
 <option>Đang  chờ nghiệm thu</option>
<option>Đang  nghiệm thu</option>
</select>
</td>
                </tr>
              </tbody>
            </table>
          </div>
</form>
           </form>   
</body>
</html>