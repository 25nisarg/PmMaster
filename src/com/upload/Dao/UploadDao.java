package com.upload.Dao;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.FileInputStream;
import java.sql.*;


public class UploadDao {

	public static void UploadD(String q,String y,String p) {

        String filePath=p,qu=q,ye=y;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");  
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmmaster","root","");
			
            Statement stm=con.createStatement();
            
			FileInputStream fis=new FileInputStream(filePath);
			XSSFWorkbook workbook=new XSSFWorkbook(fis);
			XSSFSheet sheet=workbook.getSheet("Sheet1");
			//System.out.print("Qery2" );
			int rows = sheet.getLastRowNum();
			
			//System.out.print("Qery3" );
			for(int i=1;i<=rows;i++) {
				XSSFRow row=sheet.getRow(i);
				//double locId=row.getCell(0).getNumericCellValue();
				String Location=row.getCell(1).getStringCellValue();
				String Asset=row.getCell(2).getStringCellValue();
				String MkModel=row.getCell(3).getStringCellValue();
				String SN=row.getCell(4).getStringCellValue();
				String Emp=row.getCell(5).getStringCellValue();	
				System.out.println(Location);
				String sql="insert into mastertable(Quater,Year,Location,Assets,MkModel,SNumber,Employee) values('"+qu+"','"+ye+"','"+Location+"','"+Asset+"','"+MkModel+"','"+SN+"','"+Emp+"')";
				stm.execute(sql);
			}
			System.out.println("Uploaded");
			workbook.close();
			fis.close();
			con.close();
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

	}
}
        //int batchSize=20000;

        //Connection connection=null;

        //System.out.print(q+"\n"+y+"\n"+p);
        /*try{
        	Class.forName("com.mysql.jdbc.Driver"); 
            connection= DriverManager.getConnection(jdbcUrl,username,password);
            connection.setAutoCommit(false);

            String sql="insert into mastertable(Quater,Year,Location,Assets,MkModel,SNumber,Employee) values(?,?,?,?,?,?,?)";

            PreparedStatement statement=connection.prepareStatement(sql);

            BufferedReader lineReader=new BufferedReader(new FileReader(filePath));

            String lineText=null;
            int count=0;

            lineReader.readLine();
            while ((lineText=lineReader.readLine())!=null){
                String[] data=lineText.split(",");

                //String id=data[0];
                String Quater=q;
                String Year=y;
                String Location=data[1];
                String Assets=data[2];
                String MkModel=data[3];
                String SNumber=data[4];
                String Employee=data[5];

              //  statement.setInt(1,parseInt(id));
                statement.setString(1,Quater);
                statement.setString(2,Year);
                statement.setString(3,Location);
                statement.setString(4,Assets);
                statement.setString(5,MkModel);
                statement.setString(6,SNumber);
                statement.setString(7,Employee);
                statement.addBatch();
                if(count%batchSize==0){
                    statement.executeBatch();
                }
            }
            lineReader.close();
            statement.executeBatch();
            connection.commit();
            connection.close();
            System.out.println("Data has been inserted successfully.");

        }
        catch (Exception exception){
            exception.printStackTrace();
        }*/
