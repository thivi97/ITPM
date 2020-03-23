package AddServlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class FileUploadHandlerInh
 */
@WebServlet("/FileUploadHandlerInh")
public class FileUploadHandlerInh extends HttpServlet {
    private final String UPLOAD_DIRECTORY = "C:\\upload";
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    	 String name = null;
    	 String content;
    	
    	       
    	        //process only if its multipart content
    	        if(ServletFileUpload.isMultipartContent(request)){
    	        	
    	        	
    	            try {
    	                List<FileItem> multiparts = new ServletFileUpload( 
    	                		new DiskFileItemFactory()).parseRequest(request);
    	                
    	                for(FileItem item : multiparts){
    	                    if(!item.isFormField()){
    	                        name = new File(item.getName()).getName();
    	                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
    	 
    	                    }
    	                }
    	               
    	                content = new String(Files.readAllBytes(Paths.get(UPLOAD_DIRECTORY + File.separator + name)));
    	                request.setAttribute("message",content);
    	                
    	                
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
          
        }else{
            request.setAttribute("message",
                                 "Sorry this Servlet only handles file upload request");
        }
     
        request.getRequestDispatcher("/Inheritance.jsp").forward(request, response);
      
    }
	
}


