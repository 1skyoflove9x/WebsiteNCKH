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
			 SELECT DeTai.MaDeTai,ThongTinSinhVien.HoTen,DeTai.TenDeTai,ThongTinSinhVien.MSSV,DeTai_SinhVien.XacNhan
			FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
			Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
			and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
	</sql:query>
	 <sql:query dataSource="${snapshot}" var="result1">
			 SELECT Count(DeTai.MaDeTai)+1 as MaAo
			FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
			Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
			and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
	</sql:query>
   <div id="load" > 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Cấp Mã Đề Tài</strong></div>
    </div>
    </div>
<div class="form-group">
    <div class="col-xs-12 col-md-2">
<h><strong>Tìm Theo</strong></h>
    </div>
    <div class="col-xs-12 col-md-4">
     <select class="form-control">
  <option>Mã Đề Tài </option>
  <option>Tên Đề Tài</option>
  <option>Giáo Viên Hướng Dẫn</option>
  <option>Lĩnh Vực</option>
  <option>Đơn Vị</option>
</select>
  </div>
<div class="col-xs-12 col-md-6">
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
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>Mã Số Sinh Viên</th>
				<th></th>
				<th></th>
                </tr>
              </thead>
     
              <tbody>
               <c:forEach var="row" items="${result.rows}">
                <tr id="row">
                  <td><c:out  value="${row.TenDeTai}"/></td>
                  <td><c:out  value="${row.HoTen}"/></td>
                   <td><c:out  value="${row.MSSV}"/></td>
                      <c:if test="${sessionScope.quyen == 'giangvien'}">
                   <td><div id="tb1"><a href = "Actor_GiaoVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
                   </c:if>
                    <c:if test="${sessionScope.quyen == 'nhanvienql'}">
                   <td><div id="tb1"><a href = "Actor_NhanVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
                   </c:if>
 				<td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.MaDeTai}">${row.XacNhan}</button> <!-- Modal -->				
					<div class="modal fade bs-example-modal-sm" id="myModal${row.MaDeTai}" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  											<div class="modal-dialog modal-sm">
    											<div class="modal-content">
   														 <div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title"><c:out  value="${row.TenDeTai}"/></h4>
														</div>
												<div class="modal-body">		
     													 <form id="signupForm2"  action="Data/DB_update_MaDeTai.jsp" method="post" class="form-horizontal">
														<div class="col-xs-12 col-md-12">
														      <input type="hidden" class="form-control"  name="madetai" id="madetai" value="${row.MaDeTai}">
														    </div>
														      
													     <c:forEach var="row1" items="${result1.rows}">
													        <label class="col-xs-12 col-md-3  ">Mã Đề Tài <span class="rq"> * </span></label>
													    <div class="col-xs-12 col-md-9">
													    <label class="checkbox-inline">
															 <input type="text" name="madetai2" id="madetai2" value="NCKH_${row1.MaAo}"/>
															 </div>
															 </br><br>
															     <div class="col-xs-12 col-md-12">
															     <label class="checkbox-inline">
															 <input type="checkbox" name="XacNhan" id="XacNhan" value="Đã Cấp Mã"> Xác Nhận Cấp Mã
															</label>
																</div>
															 </c:forEach>
															</label>
															</br></br>
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
      </div>
    </div>
    </div>
                
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
</body>
</html>