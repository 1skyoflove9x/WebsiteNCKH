package tool.detainckh;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connectdatabase.ConnectMySql;

/**
 * Servlet implementation class UploadToDBServlet
 */
@WebServlet("/uploadToDB")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadToDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadToDBServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/NopBaoCao.jsp");
	       dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Connection conn = null;
	       try {
	           conn = ConnectMySql.getMySQLConnection();
	           conn.setAutoCommit(false);
	 
	           String description = request.getParameter("description");
	 
	  
	           for (Part part : request.getParts()) {
	               String fileName = extractFileName(part);
	               if (fileName != null && fileName.length() > 0) {

	                   InputStream is = part.getInputStream();
	          
	                
	                   this.writeToDB(conn, fileName, is, description);
	               }
	           }
	           conn.commit();
	 
	  
	           
	           response.sendRedirect(request.getContextPath() + "/uploadToDBResults");
	       } catch (Exception e) {
	           e.printStackTrace();
	           request.setAttribute("errMsg", "Error: " + e.getMessage());
	           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Actor_SinhVien.jsp?='Thất Bại'");
	           dispatcher.forward(request, response);
	       } finally {
	           this.closeQuietly(conn);
	       }
	}
	
	 private String extractFileName(Part part) {
	 
	       String contentDisp = part.getHeader("content-disposition");
	       String[] items = contentDisp.split(";");
	       for (String s : items) {
	           if (s.trim().startsWith("filename")) {
	               // C:\file1.zip
	               // C:\Note\file2.zip
	               String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
	               clientFileName = clientFileName.replace("\\", "/");
	               int i = clientFileName.lastIndexOf('/');
	               // file1.zip
	               // file2.zip
	               return clientFileName.substring(i + 1);
	           }
	       }
	       return null;
	   }
	 
	   private Long getMaxAttachmentId(Connection conn) throws SQLException {
	       String sql = "Select max(a.id) from FileNCKH a";
	       PreparedStatement pstm = conn.prepareStatement(sql);
	       ResultSet rs = pstm.executeQuery();
	       if (rs.next()) {
	           long max = rs.getLong(1);
	           return max;
	       }
	       return 0L;
	   }
	 
	   private void writeToDB(Connection conn, String fileName, InputStream is, String description) throws SQLException {
	 
	       String sql = "Insert into FileNCKH(Id,File_Name,File_Data,Description) " //
	               + " values (?,?,?,?) ";
	       PreparedStatement pstm = conn.prepareStatement(sql);
	 
	       Long id = this.getMaxAttachmentId(conn) + 1;
	       pstm.setLong(1, id);
	       pstm.setString(2, fileName);
	       pstm.setBlob(3, is);
	       pstm.setString(4, description);
	       pstm.executeUpdate();
	   }
	 
	   private void closeQuietly(Connection conn) {
	       try {
	           if (conn != null) {
	               conn.close();
	           }
	       } catch (Exception e) {
	       }
	   }
	 

}
