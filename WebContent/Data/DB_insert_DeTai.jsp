<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Cập Nhật Đề Tài</title>
</head>
<body>
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"
			     user="root"  password="0123"/>
			 

 <% request.setCharacterEncoding("UTF-8");
%>
		<c:if test="${sessionScope.quyen == 'sinhvien'}">
		 <sql:query dataSource="${snapshot}" var="test">
		 	select count(*) as kount from DeTai,ThongTinSinhVien,DeTai_SinhVien 
		 	where DeTai.MaDeTai=DeTai_SinhVien.MaDeTai and ThongTinSinhVien.MSSV=DeTai_SinhVien.MSSV
		 	and ThongTinSinhVien.MSSV='${sessionScope.loginUser}'
		 </sql:query>
		 
		 <c:forEach items="${test.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount==0}">
        <sql:update dataSource="${snapshot}" var="table1">
            INSERT INTO DeTai(MaDeTai,TenDeTai,GVHD)
            value("${sessionScope.madetai}",?,?)
            <sql:param value="${param.TenDeTai}" />
            <sql:param value="${param.GVHD}" />
        </sql:update>
        <sql:update dataSource="${snapshot}" var="table2">
            INSERT INTO DeTai_SinhVien(MaDeTai,MSSV,TrangThai)
            value("${sessionScope.madetai}","${sessionScope.madetai}","Đề tài chờ duyệt đăng ký")
        </sql:update>
        <sql:update dataSource="${snapshot}" var="table3">
            INSERT INTO DeTai_ThongTin(MaDeTai,LinhVuc,LoaiHinhCoBan,CoQuanChuTri,TinhHinhTrongNuoc,TinhHinhNgoaiNuoc,CacCongTrinhLienQuan,
			TinhCapThiet,MucTieu,PhuongPhapNghienCuu,LoaiSanPham,DiaChiUngDung,KinhPhi)
			value("${sessionScope.madetai}",?,?,?,?,?,?,?,?,?,?,?,?)
            <sql:param value="${param.LinhVuc}" />
            <sql:param value="${param.LoaiHinhCoBan}" />
            <sql:param value="${param.CoQuanChuTri}" />
            <sql:param value="${param.TinhHinhTrongNuoc}" />
            <sql:param value="${param.TinhHinhNgoaiNuoc}" />
            <sql:param value="${param.CacCongTrinhLienQuan}" />
            <sql:param value="${param.TinhCapThiet}" />
            <sql:param value="${param.MucTieu}" />
            <sql:param value="${param.PhuongPhapNghienCuu}" />
           <sql:param value="${param.LoaiSanPham}" />
            <sql:param value="${param.DiaChiUngDung}" />
            <sql:param value="${param.KinhPhi}" />
        </sql:update>
        </c:when>
        <c:otherwise>
            <c:redirect url="../Actor_SinhVien.jsp" >
              <c:param name="errMsg" value="Sinh Viên Đã Đăng Ký Đề Tài!" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
        </c:forEach>
       
        <c:if test="${table1>=1 and table2>=1 and table3>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${table1==0 or table2==0 or table3==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thất Bại" />
            </c:redirect> 
        </c:if> 
		</c:if>
		
		
		<c:if test="${sessionScope.quyen == 'giangvien'||sessionScope.quyen == 'nhanvienql'}">
		 <sql:query dataSource="${snapshot}" var="test">
		 	select count(*) as kount from DeTai,ThongTinCanBo,DeTai_CanBo
		 	where DeTai.MaDeTai=DeTai_CanBo.MaDeTai and ThongTinCanBo.MaCanBo=DeTai_CanBo.MaCanBo
		 	and ThongTinCanBo.MaCanBo='${sessionScope.loginUser}'
		 </sql:query>
		 
		 <c:forEach items="${test.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount==0}">
        <sql:update dataSource="${snapshot}" var="table1">
            INSERT INTO DeTai(MaDeTai,TenDeTai)
            value("${sessionScope.madetai}",?)
            <sql:param value="${param.TenDeTai}" />
        </sql:update>
        <sql:update dataSource="${snapshot}" var="table2">
            INSERT INTO DeTai_CanBo(MaDeTai,MaCanBo,TrangThai)
            value("${sessionScope.madetai}","${sessionScope.madetai}","Đề tài chờ duyệt đăng ký")
        </sql:update>
        <sql:update dataSource="${snapshot}" var="table3">
            INSERT INTO DeTai_ThongTin(MaDeTai,LinhVuc,LoaiHinhCoBan,CoQuanChuTri,TinhHinhTrongNuoc,TinhHinhNgoaiNuoc,CacCongTrinhLienQuan,
			TinhCapThiet,MucTieu,PhuongPhapNghienCuu,LoaiSanPham,DiaChiUngDung,KinhPhi)
			value("${sessionScope.madetai}",?,?,?,?,?,?,?,?,?,?,?,?)
            <sql:param value="${param.LinhVuc}" />
            <sql:param value="${param.LoaiHinhCoBan}" />
            <sql:param value="${param.CoQuanChuTri}" />
            <sql:param value="${param.TinhHinhTrongNuoc}" />
            <sql:param value="${param.TinhHinhNgoaiNuoc}" />
            <sql:param value="${param.CacCongTrinhLienQuan}" />
            <sql:param value="${param.TinhCapThiet}" />
            <sql:param value="${param.MucTieu}" />
            <sql:param value="${param.PhuongPhapNghienCuu}" />
           <sql:param value="${param.LoaiSanPham}" />
            <sql:param value="${param.DiaChiUngDung}" />
            <sql:param value="${param.KinhPhi}" />
        </sql:update>
        </c:when>
        <c:otherwise>
            <c:redirect url="../Actor_SinhVien.jsp" >
              <c:param name="errMsg" value="Sinh Viên Đã Đăng Ký Đề Tài!" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
        </c:forEach>
       
     <c:if test="${sessionScope.quyen == 'giangvien'}">
        <c:if test="${table1>=1 and table2>=1 and table3>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_GiaoVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${table1==0 or table2==0 or table3==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_GiaoVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thất Bại" />
            </c:redirect> 
        </c:if> 
		</c:if>
		
		       <c:if test="${sessionScope.quyen == 'nhanvienql'}">
        <c:if test="${table1>=1 and table2>=1 and table3>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${table1==0 or table2==0 or table3==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thất Bại" />
            </c:redirect> 
        </c:if> 
		</c:if>
		</c:if>
		
		      
</body>
</html>