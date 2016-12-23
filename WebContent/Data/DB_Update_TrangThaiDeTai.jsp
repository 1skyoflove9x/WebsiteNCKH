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
			<%-- <sql:query dataSource="${snapshot}" var="test">
		 	select TrangThai from DeTai_SinhVien 
		 	where DeTai_SinhVien.MaDeTai='${param.madetai}'
		 </sql:query>
		  <c:forEach items="${test.rows}" var="r"> --%>
        <%-- <c:choose>
          <c:when test="${r.TrangThai=='Chưa đăng ký đề tài'||r.TrangThai=='Đề tài chờ duyệt đăng ký'||r.TrangThai=='Đề tài chờ duyệt thực hiện'||r.TrangThai=='Đề tài được duyệt thực hiện'
          ||r.TrangThai=='Đề tài đã gia hạn'||r.TrangThai=='Đề tài chờ nghiệm thu'||r.TrangThai=='Đề tài chờ hủy'||r.TrangThai=='Đề tài chờ duyệt hủy'
          ||r.TrangThai=='Đề tài chờ gia hạn'||r.TrangThai=='Đề tài chờ duyệt gia hạn'||r.TrangThai=='Đề tài được duyệt gia hạn'||r.TrangThai=='Đề tài chờ phản biện'||r.TrangThai=='Đề tài chờ nghiệm thu'}"> --%>
        
        <sql:update dataSource="${snapshot}" var="result">
            UPDATE DeTai_SinhVien
            SET 
            TrangThai=?
            where DeTai_SinhVien.MaDeTai='${param.madetai}'
            <sql:param value="${param.TrangThai}" />
        </sql:update>
        <c:if test="${sessionScope.quyen == 'sinhvien'}">
         <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Yêu Cầu Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Yêu Cầu Thất Bại" />
            </c:redirect> 
        </c:if> 
        </c:if>
        <c:if test="${sessionScope.quyen == 'giangvien'}">
         <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
             <c:redirect url="../Actor_GiaoVien.jsp" >
                <c:param name="errMsg" value="Yêu Cầu Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_GiaoVien.jsp" >
                <c:param name="errMsg" value="Yêu Cầu Thất Bại" />
            </c:redirect> 
        </c:if> 
        </c:if>
         <c:if test="${sessionScope.quyen == 'nhanvienql'}">
         <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Yêu Cầu Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Yêu Cầu Thất Bại" />
            </c:redirect> 
        </c:if> 
        </c:if>
        

</body>
</html>