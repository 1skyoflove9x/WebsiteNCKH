package controller;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import javax.servlet.annotation.WebServlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.mysql.jdbc.Statement;

import antlr.collections.impl.Vector;
import connectdatabase.ConnectMySql;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class FileUploadExcel
 */
public class FileUploadExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DATA_DIRECTORY = "data";
	private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
	private static final int MAX_REQUEST_SIZE = 1024 * 1024;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadExcel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String filename =      request.getParameter("excelfile");
         InputStream input = HSSFExcelSheet.class.getResourceAsStream( "filename" );
       POIFSFileSystem fs = new POIFSFileSystem( input );          
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(1);
       System.out.println(wb.getSheetName(1));
       request.setAttribute("filename", filename);
       RequestDispatcher view = 
             request.getRequestDispatcher("FileUploaded.jsp");
             view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
}
	
	 public static Vector read(String fileName)    {
		    Vector cellVectorHolder = new Vector();
		    try{
		            FileInputStream myInput = new FileInputStream(fileName);
		            POIFSFileSystem myFileSystem = new POIFSFileSystem(myInput);
		        HSSFWorkbook myWorkBook = new HSSFWorkbook(myFileSystem);
		        HSSFSheet mySheet = myWorkBook.getSheetAt(0);
		       Iterator rowIter = mySheet.rowIterator(); 
		       while(rowIter.hasNext()){
		              HSSFRow myRow = (HSSFRow) rowIter.next();
		              Iterator cellIter = myRow.cellIterator();
		              Vector cellStoreVector=new Vector();
		              while(cellIter.hasNext()){
		                      HSSFCell myCell = (HSSFCell) cellIter.next();
		                      cellStoreVector.addElement(myCell);
		              }
		              cellVectorHolder.addElement(cellStoreVector);
		      }
		    }catch (Exception e){e.printStackTrace(); }
		    return cellVectorHolder;
		}
		   public void saveToDatabase(Connection conn,Vector dataHolder) {
		    String name="";
		            String address="";
		            for (int i=0;i<dataHolder.size(); i++){
		               Vector cellStoreVector=(Vector)dataHolder.elementAt(i);
		                    for (int j=0; j < cellStoreVector.size();j++){
		                            HSSFCell myCell = (HSSFCell)cellStoreVector.elementAt(j);
		                            String st = myCell.toString();
		                             name=st.substring(0,1);
		                             address=st.substring(0);
		                                                    }
		                    try{
		    Statement stat=con.createStatement();
		    int k=stat.executeUpdate("insert into data(name,address) value('"+name+"','"+address+"')");
		    System.out.println("Data is inserted");
		    stat.close();
		    con.close();
		    }
		    catch(Exception e){}
		    }
		    }
		  }
	
	
}
