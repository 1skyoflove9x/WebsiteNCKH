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
    var i=1;  
    $('#add').click(function(){  
         i++;  
         $('#dynamic_field').append(
        		 '<tr id="row'+i+'">'+
        		 '<td><input type="text" name="name[]" placeholder="stt" class="form-control name_list" value="'+i+'" /></td>'+
        		 '<td><input type="text" name="name[]" placeholder="Tên Đăng Nhập" class="form-control name_list" /></td>'+
        		 '<td><input type="text" name="name[]" placeholder="Mật Khẩu" class="form-control name_list" /></td>'+
        		 '<td><input type="text" name="name[]" placeholder="Họ Tên User" class="form-control name_list" /></td>'+
        		 '<td><input type="text" name="name[]" placeholder="Quyền Truy Cập" class="form-control name_list" /></td>'+
        		 '<td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td></tr>');  
    });  
    $(document).on('click', '.btn_remove', function(){  
         var button_id = $(this).attr("id");   
         $('#row'+button_id+'').remove();  
    });  
    $('#submit').click(function(){            
         $.ajax({  
              url:"demo.php",  
              method:"POST",  
              data:$('#add_name').serialize(),  
              success:function(data)  
              {  
                   alert(data);  
                   $('#add_name')[0].reset();  
              }  
         });  
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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Quản Lý Tài Khoản</strong></div>
    </div>
    </div>
<form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
         
         <div class="form-group">  
       
                     <form name="add_name" id="add_name">  
                          <div class="table-responsive">  
                               <table class="table table-bordered" id="dynamic_field">  
                                <thead>
                <tr>
                  <th>Stt</th>
                  <th>Tên Đăng Nhập</th>
                  <th>Mật Khẩu</th>
                  <th>Họ Tên User</th>
                  <th>Phân Quyền</th>
 <td><button type="button" name="add" id="add" class="btn btn-success">Thêm Tài Khoản</button></td>  
                </tr>
              </thead>
                                     <tr id="row1">
                  <td>1</td>
                  <td>14110425</td>
                  <td>123456</td>
                  <td>Nguyễn Quốc Trường</td> 
                   <td>Sinh Viên</td> 
                   <td><button type="button" name="remove" id="1" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
                               </table>  
                               <input type="button" name="submit" id="submit" class="btn btn-info" value="Lưu Thay Đổi" />  
                          </div>  
                     </form>  
                </div>  
          </br> <strong><h2  style="clear:right; margin-left:20px;color:#009;">Danh Sách Tài Khoản</h2></strong></br>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr >
                  <th>Stt</th>
                  <th>Tên Đăng Nhập</th>
                  <th>Mật Khẩu</th>
                  <th>Họ Tên User</th>
                  <th>Phân Quyền</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr id="row2">
                  <td>1</td>
                  <td>14110255</td>
                  <td>123456</td>
                  <td>Như Tiến</td>
                 <td>  <select class="form-control">
  <option>Admin</option> 
  <option>Nhân Viên Quản lý</option>
  <option>Giảng Viên</option>
  <option>Sinh Viên</option>
</select>
</td>
 <td><button type="button" name="remove" id="2" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row3">
                 <td>2</td>
                  <td>14110426</td>
                  <td>123456</td>
                  <td>Phạm Công Hậu</td>
                                   <td>  <select class="form-control">
  <option>Admin</option> 
  <option>Nhân Viên Quản lý</option>
  <option>Giảng Viên</option>
  <option>Sinh Viên</option>
</select>
</td>
 <td><button type="button" name="remove" id="3" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
</tr>
                <tr id="row4">
                     <td>3</td>
                  <td>14110427</td>
                  <td>123456</td>
                  <td>Lý Say Xình</td>
                                  <td>  <select class="form-control">
   <option>Giảng Viên</option>
  <option>Admin</option> 
  <option>Nhân Viên Quản lý</option>
  <option>Sinh Viên</option>
</select>
</td>
      <td><button type="button" name="remove" id="4" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
</tr>
<tr id="row5">
                 <td>4</td>
                  <td>14110427</td>
                  <td>123456</td>
                  <td>Trần Trọng Trí</td>
                                  <td>  <select class="form-control">
    <option>Nhân Viên Quản lý</option>
  <option>Admin</option> 
  <option>Giảng Viên</option>
  <option>Sinh Viên</option>
</select>
</td>
 <td><button type="button" name="remove" id="5" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
</tr>
<tr id="row6">
                 <td>5</td>
                  <td>14110426</td>
                  <td>123456</td>
                  <td>Lê bảo</td>
                                <td>  <select class="form-control">
    <option>Sinh Viên</option>
  <option>Admin</option> 
  <option>Nhân Viên Quản lý</option>
  <option>Giảng Viên</option>
</select>
</td>
 <td><button type="button" name="remove" id="6" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
</tr>
<tr id="row7" >
                 <td>6</td>
                  <td>14110426</td>
                  <td>123456</td>
                  <td>Lê Quốc Trung Trực</td>
                                  <td>  <select class="form-control">
  <option>Nhân Viên Quản lý</option>
  <option>Admin</option> 
  <option>Giảng Viên</option>
  <option>Sinh Viên</option>
</select>
</td>
 <td><button type="button" name="remove" id="7" class="btn btn-danger btn_remove">Xóa Tài Khoản</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
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