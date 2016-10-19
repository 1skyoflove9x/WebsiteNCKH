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
   <link rel="stylesheet" type="text/css" href="ThuVien/css/jquery.dataTables.css"/>  
           <script type="text/javascript" src="ThuVien/Jquery/jquery.dataTables.js"></script> 
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
<script>
$(document).ready(function(){  
    $('#loaddata').DataTable({  
         "ajax"     :     "Data/dsdetai.json",  
         "columns"     :     [  
              {     "data"     :     "stt"     },  
              {     "data"     :     "madetai"}, 
              {     "data"     :     "tendetai"},
              {     "data"     :     "tenchunhiem"},
              {     "data"     :     "gvhd"}  
         ]  
    }); 

});  
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
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Xem Đề Tài</strong></div>
    </div>
    </div>
<form style=" border: groove;width:700px;margin-left:15px; margin-right:15px;">	
            <br /><br />  
           <div class="container" style=" width:700px; height:700px;margin-left:5px; margin-right:50px;margin-bottom:35px;">  
                <table id="loaddata" class="table table-bordered">  
                     <thead>  
                          <tr>  
                                <th width="2%">STT</th>  
                               <th width="3%">Mã Đề Tài</th>  
                               <th width="12%">Tên Đề Tài</th>  
                               <th width="10%">Họ Tên Chủ Nhiệm</th> 
                               <th width="10%">Giáo Viên Hướng Dẫn</th> 
                          </tr>  
                     </thead>  
                </table>  
           </div>  

           </form>   

</form>

</body>
</html>