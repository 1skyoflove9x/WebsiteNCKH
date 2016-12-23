<%@ page import="connectdatabase.User" %>
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
			 SELECT * 
           FROM DeTai,ThongTinCanBo,PhanCongPhanBien,DeTai_SinhVien
            where DeTai.MaDeTai=PhanCongPhanBien.MaDeTai 
            and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
            and PhanCongPhanBien.MaCanBo=ThongTinCanBo.MaCanBo
            and ThongTinCanBo.MaCanBo="${sessionScope['loginUser']}"
	</sql:query>

   <div id="load"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Đề Tài Được Phân Công Phản Biện</strong></div>
    </div>
    </div>
<div class="table-responsive">
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
  <c:if test="${sessionScope.quyen == 'giangvien'}">
                   <td><div id="tb1"><a href = "Actor_GiaoVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
                   </c:if>
                    <c:if test="${sessionScope.quyen == 'nhanvienql'}">
                   <td><div id="tb1"><a href = "Actor_NhanVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
                   </c:if>					 <td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.MaDeTai}">Phản Biện</button> <!-- Modal -->				
							<div id="myModal${row.MaDeTai}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title">Gửi phản biện đề tài <c:out  value=" ${row.TenDeTai}"/></h4>
														</div>
														<div class="modal-body">
														 <form id="signupForm2"  action="Data/DB_insert_DanhGiaDeTai.jsp" method="post" class="form-horizontal">
															   <input type="hidden" class="form-control"  name="madetai" id="madetai" value="${row.MaDeTai}">
														<strong> Nội dung đánh giá:</strong>
														 <textarea class="form-control" rows="6" name="ykien" id="ykien" placeholder="nhập phản biện"  minlength="9"></textarea>
														</br>
														<div class="col-xs-12 col-md-12">
																	<div class="checkbox">
																		<label>
																			<input type="checkbox" name="TrangThai" id="xacnhan" value="Đề tài đã phản biện" required/>xác nhận
																		</label>
																	</div>
																	</div>
														<div class="modal-footer">	
													     	<input type="reset" class="btn btn-default" value="Hủy"/>
													       <input type="submit" class="btn btn-primary" value="Gửi Đánh Giá" />
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
          
</br></br></br>
              </tbody>
            </table>
          </div>
          
      
    </div>
</body>
</html>