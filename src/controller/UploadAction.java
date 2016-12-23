package controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File; 
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


/**
 * Servlet implementation class MyservletUpload
 */
public class UploadAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	XSSFWorkbook workbook; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
        {          
          
          FileInputStream file = new FileInputStream(new File("E:\\demo.xlsx"));
            
          //Get the xlsx workbook
          workbook = new XSSFWorkbook (file);
           
          //Get first sheet from the workbook
          XSSFSheet sheet = workbook.getSheetAt(0);
          
          
          //Get iterator to all cells of current row
          Iterator<Row> rowIterator = sheet.rowIterator();
     
       while(rowIterator .hasNext())
       {
            
           Row row = rowIterator.next();
        
          //For each row, iterate through each columns
          Iterator<org.apache.poi.ss.usermodel.Cell> cellIterator = row.cellIterator();

          while(cellIterator.hasNext()) 
              {
                    
                  Cell cell = cellIterator.next();
                   
                  switch(cell.getCellType())
                  {
                            
                        case Cell.CELL_TYPE_BOOLEAN:
                        System.out.print(cell.getBooleanCellValue() + "\t\t");
                        break;
                            
                        case Cell.CELL_TYPE_NUMERIC:
                        System.out.print(cell.getNumericCellValue() + "\t\t");
                        break;
                   
                        case Cell.CELL_TYPE_STRING:
                        System.out.print(cell.getStringCellValue() + "\t\t");
                        break;
                  }     
         
              }               
                        System.out.println("");
             }    
               file.close();
         } 
         catch (FileNotFoundException e) 
         {
           e.printStackTrace();
         } 
         catch (IOException e) 
         {
           e.printStackTrace();
         }
           
     response.setContentType("application/vnd.ms-excel");
     workbook.write(response.getOutputStream());
     response.getOutputStream().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		}

}
