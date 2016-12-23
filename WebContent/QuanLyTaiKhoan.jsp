<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
   <script type="text/javascript">
//sử dụng ajax với funtion updatesession đổ dữ liệu qua trang session để xử lý dữ liệu ID
    function updateSession(id){
    	
    	$.ajax({
    			method:"POST",
    			url: "Data/session.jsp",
    			data: ({ idname: id}),
    			 dataType: "xml",
    			    success: function(xml) {
    			        $(xml).find('site').each(function(){
    			            var url = $(this).attr('url');                                  
    			        });
    			    }
    	
    			});
    };
    
    
  </script> 


<!-- <script type="text/javascript">
		$(window).load(function()
		{
		    $('#myModal').modal('show');
		});
</script> -->

<script>
/* must apply only after HTML has loaded */
$(document).ready(function () {
    $("#contact_form").on("submit", function(e) {
        var postData = $(this).serializeArray();
        var formURL = $(this).attr("action");
        $.ajax({
            url: formURL,
            type: "POST",
            data: postData,
            success: function(data, textStatus, jqXHR) {
                $('#contact_dialog .modal-header .modal-title').html("Result");
                $('#contact_dialog .modal-body').html(data);
            },
            error: function(jqXHR, status, error) {
                console.log(status + ": " + error);
            }
        });
        e.preventDefault();
    });
     
    $("#submitForm").on('click', function() {
        $("#contact_form").submit();
    });
});
</script>

<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>
<body>






<!-- <div class="container">


  Modal
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div> -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
     user="root"  password="0123"/>
 <sql:query dataSource="${snapshot}" var="result">
		SELECT * FROM dangnhap
		</sql:query>
<div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Quản Lý Tài Khoản</strong></div>
    </div>
    </div>
  <form id="signupForm1"  action="Data/DB_insert_QuanLyTaiKhoan.jsp" method="post" class="form-horizontal">
      
       <label class="col-xs-12 col-md-3  " for="name">Tên Đăng Nhập<span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="TenDangNhap" id="TenDangNhap"placeholder="Nhập têm đăng nhập"  minlength="6">
       </br>
    </div>
    
       <label class="col-xs-12 col-md-3  " for="name">Mật Khẩu <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="MatKhau" id="MatKhau" placeholder="Nhập mật khẩu"  minlength="6">
       </br>
    </div>

<label class="col-xs-12 col-md-3  " for="name">Họ Và Tên <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="text"  class="form-control" name="HoTenUser" id="HoTenUser" placeholder="Nhập họ và tên user">
       </br>
    </div>
    
    <label class="col-xs-12 col-md-3  " for="name">Email <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9 ">
          <input type="email"  class="form-control" name="Email" id="Email" placeholder="Nhập Email" >
       </br>
    </div>
    
    <label class="col-xs-12 col-md-3" for="name">Phân Quyền <span class="rq"> *</label>
    <div class="col-xs-12 col-md-9">
          <select class="form-control" name="PhanQuyen">
  <option value="sinhvien">Sinh Viên</option> 
  <option value="giangvien">Giảng Viên</option>
  <option value="nhanvienql">Nhân Viên Quản Lý</option>
		</select>
       </br>
    </div>
     <input type="reset" class="btn btn-default" value="Hủy"/>
       <input type="submit" class="btn btn-primary" value="Thêm Tài Khoản" />
    </form> 
   


        
          </br> <strong><h2  style="clear:right; margin-left:20px;color:#009;">Danh Sách Tài Khoản</h2></strong></br>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr >
                  <th>Stt</th>
                  <th>Họ Và Tên</th>
                  <th>Email</th>
                  <th>Tên Đăng Nhập</th>
                  <th>Mật Khầu</th>
                  <th>Quyền</th>
				<th></th>
				<th></th>
                </tr>
              </thead>
              <tbody>
                   <c:forEach var="row" items="${result.rows}">
             <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'"   onclick="getTblContents(this);" >
                  <td id="pId"><c:out  value="${row.id}"/></td>
                  <td id="pName"><c:out value="${row.FullName}"/></td>
                  <td id="pEmail"><c:out value="${row.email}"/></td>
                  <td width="15%"><c:out value="${row.uName}"/></td>
                 <td width="10%"><c:out value="${row.Pass}"/></td>
                 <td width="5%"><c:out value="${row.Quyen}"/></td>
              	   <td><a class="btn btn-danger" href="Data/DB_Delete_QuanLyTaiKhoan.jsp?id=<c:out value="${row.id}"/>">Xóa</a>
				
				  <td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.id}">Cập Nhật</button> <!-- Modal -->				
							<div id="myModal${row.id}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title">Thông tin tài khoản</h4>
														</div>
														<div class="modal-body">
														 <form id="signupForm2"  action="Data/DB_update_QuanLyTaiKhoan.jsp" method="post" class="form-horizontal">
																								 <label class="col-xs-12 col-md-3  " for="name">ID</label>
													    <div class="col-xs-12 col-md-9 ">
													          <input type="text"  class="form-control" name="idU" id="idU1" value="${row.id}" placeholder="Nhập têm ID">
													       </br>
													    </div>   
													       <label class="col-xs-12 col-md-3  " for="name">Tên Đăng Nhập<span class="rq"> *</label>
													    <div class="col-xs-12 col-md-9 ">
													          <input type="text"  class="form-control" name="user" id="user1" value="${row.uName}" placeholder="Nhập têm đăng nhập"  minlength="6" value="${rowi.FullName}">
													       </br>
													    </div>
													    
													       <label class="col-xs-12 col-md-3  " for="name">Mật Khẩu <span class="rq"> *</label>
													    <div class="col-xs-12 col-md-9 ">
													          <input type="text"  class="form-control" name="pass" id="pass1" value="${row.Pass}" placeholder="Nhập mật khẩu"  minlength="6">
													       </br>
													    </div>
													
													<label class="col-xs-12 col-md-3  " for="name">Họ Và Tên <span class="rq"> *</label>
													    <div class="col-xs-12 col-md-9 ">
													          <input type="text"  class="form-control" name="hoten" id="hoten1"  value="${row.FullName}"placeholder="Nhập họ và tên user">
													       </br>
													    </div>
													    
													    <label class="col-xs-12 col-md-3  " for="name">Email <span class="rq"> *</label>
													    <div class="col-xs-12 col-md-9 ">
													          <input type="email"  class="form-control" name="email" id="email1" value="${row.email}" placeholder="Nhập Email" >
													       </br>
													    </div>
													    
													    <label class="col-xs-12 col-md-3" for="name">Phân Quyền <span class="rq"> *</label>
													    <div class="col-xs-12 col-md-9">
													          <select class="form-control" name="quyen">
													  <option value="sinhvien">Sinh Viên</option> 
													  <option value="giangvien">Giảng Viên</option>
													  <option value="nhanvienql">Nhân Viên Quản Lý</option>
															</select>
													       </br>
													    </div>
													     <input type="reset" class="btn btn-default" value="Hủy"/>
													       <input type="submit" class="btn btn-primary" value="Cập Nhật" />
   														 </form>
														</div>

													</div>

												</div>
											</div>
												
												</td>
 					
			</tr>
</c:forEach>
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
</body>
</html>