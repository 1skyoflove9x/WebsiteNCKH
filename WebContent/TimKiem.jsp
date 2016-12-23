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
 <script >
          var request=new XMLHttpRequest();  
 function searchInfo(){  
	 var name=document.vinform.name.value;  
	 var url="TimKiemDeTai.jsp?val="+name;  
	   
	 try{  
	 request.onreadystatechange=function(){  
	 if(request.readyState==4){  
	 var val=request.responseText;  
	 document.getElementById('mylocation').innerHTML=val;  
	 }  
	 }//end of function  
	 request.open("GET",url,true);  
	 request.send();  
	 }catch(e){alert("Không thể kết nối tới server");}  
	 }  
</script>
<style>
<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>

<body>


          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Tìm Kiếm</strong></div>
    </div>
    </div>
		

		<form name="vinform"> 

		    		  <div class="form-group">
    <div class="col-xs-12 col-md-2 ">
<h><strong>Tìm Theo</strong></h>
</br>
    </div>
    <div class="col-xs-12 col-md-4">
   <select class="form-control" name="dieukien">
  <option value="MaDeTai">Mã Đề Tài</option> 
  <option value="GiaoVienHuongDan">Giáo Viên Hướng Dẫn</option>
  <option value="TenDeTai">Đơn Vị</option>
		</select>
  </div>
  
<div class="col-xs-12 col-md-6">
  <div class="input-group">
     <input type="text" name="name" class="form-control" onkeyup="searchInfo()">  
      <span class="input-group-btn">
        <input class="btn btn-default" type="submit" id="timkiem" >Tìm</button>
      </span>
    </div>
</div>
</div>   
		</form>  
		  </br>

		  
		  <div class="col-xs-12 col-md-12">
		<span id="mylocation"></span>  
		</div>

</body>
</html>