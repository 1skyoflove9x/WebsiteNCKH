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
    $('#upload_csv').on("submit", function(e){  
         e.preventDefault(); //form will not submitted  
         $.ajax({  
              url:"import.php",  
              method:"POST",  
              data:new FormData(this),  
              contentType:false,          // The content type used when sending data to the server.  
              cache:false,                // To unable request pages to be cached  
              processData:false,          // To send DOMDocument or non processed data file it is set to false  
              success: function(data){  
                   if(data=='Error1')  
                   {  
                        alert("Invalid File");  
                   }  
                   else if(data == "Error2")  
                   {  
                        alert("Please Select File");  
                   }  
                   else  
                   {  
                        $('#employee_table').html(data);  
                   }  
              }  
         })  
    });  
});  
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
 <br /><br />  
           <div class="container" style="width:650px">   
                <h2 align="center">Tạo Tài Khoản User</h2>  
                <h3 align="center">Import file excel</h3><br />  
                <form id="upload_csv" method="post" enctype="multipart/form-data">  
                     <div class="col-md-3">  
                          <br />  
                          <label>Lấy File Từ Máy Tính</label>  
                     </div>  
                     <div class="col-md-4">  
                          <input type="file" name="employee_file" style="margin-top:15px;" />  
                     </div>  
                     <div class="col-md-5">  
                          <input type="submit" name="upload" id="upload" value="Upload" style="margin-top:10px;" class="btn btn-info" />  
                     </div>  
                     <div style="clear:both"></div>  
                </form>  
                <br /><br /><br />  
                <div class="table-responsive" id="employee_table" >  
                     <table class="table table-bordered">  
                          <tr>  
                               <th width="5%">Mã Số </th>  
                               <th width="15%">Họ Tên Sinh Viên/Giảng Viên</th>  
                               <th width="15%">Email Sinh Viên/Giảng Viên</th>  
                          </tr>  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                          ?>  
                          <tr>  
                               <td><?php echo $row["id"]; ?></td>  
                               <td><?php echo $row["name"]; ?></td>  
                               <td><?php echo $row["gmail"]; ?></td>  
                          </tr>  
                          <?php  
                          }  
                          ?>  
                     </table>  
                </div>  
           </div>  
</form>
 <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">

          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Mã Số Sinh Viên/Giảng Viên</th>
                  <th>Tên Sinh Viên/Giảng Viên</th>
                  <th>Gmail Sinh  Viên/Giảng Viên</th>
	<th></th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>14110425</td>
	<td>Nguyễn Quốc Trường</td>
                  <td>14110425@student.hcmute.edu.vn</td>
	<td> <button type="button" class="btn btn-primary">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
                </tr>
                              <tr>
                  <td>14110428</td>
	<td>Lý Say Xình</td>
                  <td>14110425@student.hcmute.edu.vn</td>
	<td> <button type="button" class="btn btn-primary">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
                </tr>
                                <tr>
                  <td>14110425</td>
	<td>Phạm Công Hâu</td>
                  <td>14110425@student.hcmute.edu.vn</td>
	<td> <button type="button" class="btn btn-primary">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
                </tr>
<tr>
                  <td>14110485</td>
	<td> Như Tiến</td>
                  <td>14110425@student.hcmute.edu.vn</td>
	<td> <button type="button" class="btn btn-primary">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
                </tr>
<tr>
                  <td>14110428</td>
	<td>Trọng Trí</td>
                  <td>14110425@student.hcmute.edu.vn</td>
	<td> <button type="button" class="btn btn-primary">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
                </tr>
<tr>
                  <td>14110456</td>
	<td>Đăng Khoa</td>
                  <td>14110456@hcmute.edu.vn</td>
	<td> <button type="button" class="btn btn-primary">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
                </tr>
              </tbody>
            </table>
          </div>
</form>
  <button type="submit  " class="btn btn-default">Tạo Tài Khoản</button>
	<button type="back" class="btn btn-default">Trở Lại</button>    
           </form>   
    </div>
</body>
</html>