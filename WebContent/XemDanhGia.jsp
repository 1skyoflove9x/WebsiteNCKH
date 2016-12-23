  <%@ page import="connectdatabase.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <script type="text/javascript">

    function ABC(id){
    	$.ajax({
    			method:"POST",
    			url: "Data/session.jsp",
    			data: { idname: id}
    			});		
    }
	</script>
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

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
	     user="root"  password="0123"/>
	       <c:if test="${sessionScope.quyen == 'giangvien'}">
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * 
           FROM DeTai,ThongTinCanBo,PhanCongPhanBien,DeTai_SinhVien,YKienDanhGia
            where DeTai.MaDeTai=PhanCongPhanBien.MaDeTai 
            and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
            and PhanCongPhanBien.MaCanBo=ThongTinCanBo.MaCanBo
            and ThongTinCanBo.MaCanBo="${sessionScope['loginUser']}"
            and YKienDanhGia.MaDeTai=DeTai.MaDeTai
	</sql:query>
	</c:if>
	   <c:if test="${sessionScope.quyen == 'nhanvienql'}">
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * 
           FROM DeTai,ThongTinCanBo,PhanCongPhanBien,DeTai_SinhVien,YKienDanhGia
            where DeTai.MaDeTai=PhanCongPhanBien.MaDeTai 
            and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
            and PhanCongPhanBien.MaCanBo=ThongTinCanBo.MaCanBo
            and YKienDanhGia.MaDeTai=DeTai.MaDeTai
	</sql:query>
	</c:if>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Xem Đánh Giá</strong></div>
    </div>
    </div>


  <table class="table table-striped">
              <thead>
                <tr>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Thời Gian Phản Biện</th>
				<th></th>
				<th></th>
                </tr>
              </thead>
              <tbody>
                 <c:forEach var="row" items="${result.rows}">
                <tr>
                 <td><c:out  value="${row.MaCapDT}"/></td>
                  <td><c:out  value="${row.TenDeTai}"/></td>
                  <td><c:out  value="${row.NgayPhanBien}"/></td>
                  	<td><div id="tb1"><a href = "Actor_GiaoVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
				<td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.MaYKien}">Xem Đánh Giá</button> <!-- Modal -->				
							<div id="myModal${row.MaYKien}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title">Xem Đánh Giá Đề Tài:  <c:out  value=" ${row.TenDeTai}"/></h4>
														</div>
														<div class="modal-body">
														<label class="col-xs-12 col-md-3">Nội Dung</label>
														    <div class="col-xs-12 col-md-9">
														     <c:out value="${row.NoiDung}"/>
														  </br></br>
														    </div>
														</br>
														<div class="modal-footer">	
													     	<input class="btn btn-default" data-dismiss="modal" value="Đóng"/>
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