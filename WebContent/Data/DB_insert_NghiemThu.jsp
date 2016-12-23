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
<title>update thông tin sinh vien</title>
</head>
<body>
<property name="hibernate.connection.useUnicode"
value="true" />
<property name="hibernate.connection.characterEncoding"
value="UTF-8" />
	<c:if test="${ empty param.madetai and  empty param.machutich  and  empty param.maphanbien  
    and  empty param.mauyvien  and  empty param.NgayPhanBien}">
      <c:redirect url="Actor_NhanVien.jsp" >
              <c:param name="errMsg" value="Vui lòng nhập dữ liệu" />
      </c:redirect>
       
    </c:if>
     
	 <% request.setCharacterEncoding("UTF-8");
	%>

			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"
			     user="root"  password="0123"/>
			 
			  <sql:query dataSource="${snapshot}" var="test">
		 	  select count(*) as kount from ThongTinCanBo 
		 	  where macanbo='${param.machutich}' or macanbo='${param.maphanbien}' or macanbo='${param.mauyvien}'
		 </sql:query>
		  <c:forEach items="${test.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount!=3}">
           <c:redirect url="../Actor_NhanVien.jsp" >
              <c:param name="errMsg" value="Không có mã số cán bộ này" />
     		 </c:redirect>
          </c:when>
           <c:when test="${r.kount==3}">
           
 		<sql:update dataSource="${snapshot}" var="result1">
            INSERT INTO PhanCongNghiemThu(MaDeTai,MaCanBo,NgayPhanBien,ChucVuNghiemThu)
			VALUES(?,?,?,?);         
            <sql:param value="${param.madetai}"/>
            <sql:param value="${param.machutich}"/>
            <sql:param value="${param.NgayPhanBien}"/>
            <sql:param value="Chủ Tịch"/>
        </sql:update>
        	<sql:update dataSource="${snapshot}" var="result2">
            INSERT INTO PhanCongNghiemThu(MaDeTai,MaCanBo,NgayPhanBien,ChucVuNghiemThu)
			VALUES(?,?,?,?);         
            <sql:param value="${param.madetai}"/>
            <sql:param value="${param.maphanbien}"/>
            <sql:param value="${param.NgayPhanBien}"/>
            <sql:param value="Phản Biện"/>
        </sql:update>
        	<sql:update dataSource="${snapshot}" var="result3">
            INSERT INTO PhanCongNghiemThu(MaDeTai,MaCanBo,NgayPhanBien,ChucVuNghiemThu)
			VALUES(?,?,?,?);         
            <sql:param value="${param.madetai}"/>
            <sql:param value="${param.mauyvien}"/>
            <sql:param value="${param.NgayPhanBien}"/>
            <sql:param value="Ủy Viên"/>
        </sql:update>
        
         <sql:update dataSource="${snapshot}" var="trangthai">
             UPDATE DeTai_SinhVien
            SET 
            TrangThai=?
            where DeTai_SinhVien.MaDeTai='${param.madetai}'
            <sql:param value="${param.TrangThai}" />
        </sql:update>
  
               <c:if test="${result1>=1 and result2>=1 and result3>=1 and trangthai>=1 }">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Phân công phản biện thành công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result1==0 or result2==0 or result3==0 or trangthai==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Không thể phân công" />
            </c:redirect> 
        </c:if> 


          </c:when>
          </c:choose>
          </c:forEach>
       
</body>
</html>