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
<script>
$(document).ready(function(){
	$("#tb1").click(function(e) {
		//=======.load(url)================
		var url,data;
		
		url = "https://docs.google.com/document/d/15-zwTehY0-D3mKTVEkqpwWRb25kWzZ0b-5M1UkMfW7k/pub?embedded=true";
		//url = "files/file-001.php";
		$("#load").load(url);
		
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
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
	     user="root"  password="0123"/>
	     
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
			Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
			and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
			and DeTai_SinhVien.TrangThai="Đề tài đã phản biện"
	</sql:query>
   <div id="load"> 
          <div class="panel-group" align="center">
   		 <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Phân Công Hội Đồng Nghiệm Thu</strong></div>
    </div>
    </div>



 <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Tên Chủ Nhiệm</th>
                  <th>Trạng Thái</th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
               <c:forEach var="row" items="${result.rows}">
                <tr>
                  <td><c:out  value="${row.MaCapDT}"/></td>
                  <td><c:out  value="${row.TenDeTai}"/></td>
                  <td><c:out  value="${row.HoTen}"/></td>
                  <td><c:out value="${row.TrangThai}"/></td>
                  	<td><div id="tb1"><a href = "Actor_NhanVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
                   <td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.MaDeTai}">Phân Công</button> <!-- Modal -->				
							<div id="myModal${row.MaDeTai}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title"><c:out  value="${row.TenDeTai}"/></h4>
														</div>
												<div class="modal-body">		
     													 <form id="signupForm2"  action="Data/DB_insert_NghiemThu.jsp" method="post" class="form-horizontal">
														<div class="col-xs-12 col-md-12">
														      <input type="hidden" class="form-control"  name="madetai" id="madetai" value="${row.MaDeTai}">
														    </div>
														    
													   			 <label  class="col-xs-12 col-md-2">Chủ Tịch: </label>
															    <div class="col-xs-12 col-md-3">
															      <input type="text" class="form-control" name="chutich" id="chutich" placeholder="Nhập tên cán bộ " minlength="6">
															    </br>
															    </div>
															    <label  class="col-xs-12 col-md-3">Mã Số Cán Bộ</label>
															    <div class="col-xs-12 col-md-3">
															      <input type="text" class="form-control" name="machutich" id="machutich"  placeholder="Nhập mã cán bộ" minlength="6">
															    </br>
															    </div>
															     <label  class="col-xs-12 col-md-2">Phản Biện: </label>
															    <div class="col-xs-12 col-md-3">
															      <input type="text" class="form-control" name="phanbien" id="phanbien" placeholder="Nhập tên cán bộ " minlength="6">
															    </br>
															    </div>
															    <label  class="col-xs-12 col-md-3">Mã Số Cán Bộ</label>
															    <div class="col-xs-12 col-md-3">
															      <input type="text" class="form-control" name="maphanbien" id="maphanbien"  placeholder="Nhập mã cán bộ" minlength="6">
															    </br>
															    </div>
															    
															     <label  class="col-xs-12 col-md-2">Ủy Viên: </label>
															    <div class="col-xs-12 col-md-3">
															      <input type="text" class="form-control" name="uyvien" id="uyvien" placeholder="Nhập tên cán bộ " minlength="6">
															    </br>
															    </div>
															    <label  class="col-xs-12 col-md-3">Mã Số Cán Bộ </label>
															    <div class="col-xs-12 col-md-3">
															      <input type="text" class="form-control" name="mauyvien" id="mauyvien"  placeholder="Nhập mã cán bộ" minlength="6">
															    </br>
															    </div>
															    
															    <label  class="col-xs-12 col-md-3">Ngày Phản Biện </label>
															    <div class="col-xs-12 col-md-8">
															      <input type="date" class="form-control" name="NgayPhanBien" id="NgayPhanBien"  placeholder="Nhập mã cán bộ" minlength="6">
															    </br>
															    </div>
															    <div class="col-xs-12 col-md-12">
																	<div class="checkbox">
																		<label>
																			<input type="checkbox" name="TrangThai" id="xacnhan" value="Đề tài chờ nghiệm thu" required/>xác nhận
																		</label>
																	</div>
																</div>
															</br></br></br></br></br></br></br></br></br></br></br></br></br>
														 <div class="modal-footer">						     
													     <input type="reset" class="btn btn-default"  value="Trở Về"/>
													       <input type="submit" class="btn btn-primary" value="Lưu" />
													       </div>
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
          </div>

    </div>
</body>
</html>