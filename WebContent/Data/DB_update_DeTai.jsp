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
		 <sql:query dataSource="${snapshot}" var="test">
		 	select count(DeTai.MaDeTai) from DeTai,ThongTinSinhVien,DeTai_SinhVien 
		 	where DeTai.MaDeTai=DeTai_SinhVien.MaDeTai and ThongTinSinhVien.MSSV=DeTai_SinhVien.MSSV
		 	and ThongTinSinhVien.MSSV='14110425'
		 	</sql:query>
        <sql:update dataSource="${snapshot}" var="result">
            UPDATE DeTai,DeTai_ThongTin
            TenDeTai=?,
            GVHD=?,
            LinhVuc=?,
            LoaiHinhCoBan=?,
            CoQuanChuTri=?,
            TinhHinhTrongNuoc=?,
            TinhHinhNgoaiNuoc=?,
            CacCongTrinhLienQuan=?,
            TinhCapThiet=?,
            MucTieu=?,
            PhuongPhapNghienCuu=?,
            LoaiSanPham=?,
            DiaChiUngDung=?,
            KinhPhi=?
            TrangThai=?
            where DeTai.MaDeTai='1' and DeTai.MaDeTai = DeTai_ThongTin.MaDeTai
            <sql:param value="${param.TenDeTai}" />
            <sql:param value="${param.GVHD}" />
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
        
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Đăng Ký Đề Tài Thất Bại" />
            </c:redirect> 
        </c:if> 

</body>
</html>