package com.upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//import com.upload.Dao.*;


import com.upload.Dao.UploadDao;


@SuppressWarnings("serial")
@MultipartConfig
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	
	String Fpath,qu,ye;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
           {
    	//System.out.print("Hello1");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch form data
        	File fileS = new File("yourfileName");
        	String pathF = fileS.getAbsolutePath();
        	out.print(pathF+"<br/>");
            Part part = request.getPart("file");
            String fileName = part.getSubmittedFileName();
            
            //out.print(part+"_"+fileName);
            String path ="D:\\Java Learn"+File.separator+fileName;//getServletContext().getRealPath("/"+"files"+File.separator+fileName);
            Fpath=path;
            out.println(path);
           InputStream is = part.getInputStream();
            boolean test = uploadFile(is,path);
            if(test){        		
            	out.println("uploaded File");
        	}
            else{
                out.println("something wrong");
            }
            
           
        }
        //UploadDao udao=new UploadDao();
    	
		//System.out.println(qu+"\n"+ye+"\n"+Fpath);
    }
    
    public boolean uploadFile(InputStream is, String path) throws Exception {
    	  //FileInputStream fis  = new FileInputStream(is);
    	  FileOutputStream fos = new FileOutputStream(path);
    	  try {
    	    byte[] buf = new byte[1024];
    	    int i = 0;
    	    while ((i = is.read(buf)) != -1) {
    	        fos.write(buf, 0, i);
    	    }
    	  } 
    	  catch (Exception e) {
    	    throw e;
    	  }
    	  finally {
    	    if (is != null) is.close();
    	    if (fos != null) fos.close();
    	  }
    	  return true;
    	}
    /*public boolean uploadFile(InputStream is, String path){
        boolean test = false;
        try{
            byte[] byt = new byte[is.available()];
            is.read();
            
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            
            test = true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return test;
    }*/

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		qu=request.getParameter("q");
		ye=request.getParameter("y");
		
		
			try {
				processRequest(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
    		UploadDao.UploadD(qu, ye, Fpath);
		
		
		System.out.println("Done!");
		
	}

}
