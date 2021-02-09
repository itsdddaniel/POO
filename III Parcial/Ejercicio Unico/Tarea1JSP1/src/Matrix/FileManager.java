package Matrix;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;

public class FileManager {
	
	public String path() {
		
		File f = new File(".");
		return f.getAbsolutePath();
	}
	
	public void write(String fileName, String content) {
		
		this.create(fileName,content);
	}
	
	public void create(String fileName, String content) {
		
		try {
			
			FileOutputStream fos = new FileOutputStream(fileName);
			
			try {
				
				byte[] b = content.getBytes();
				fos.write(b);
				
			}finally{
				fos.close();
			}
			
			
		}catch(Exception e){
			
		}
		
		
		
	}
	
	public String read(String fileName) {
		
		StringBuilder content = new StringBuilder();

		try {
			
			FileInputStream fis = new FileInputStream(fileName);
			InputStreamReader isr = new InputStreamReader(fis);
			BufferedReader br = new BufferedReader(isr);
			
			try {
				
				String line;
				while( (line = br.readLine()) != null) {
					
					content.append(line);
					//content.append("\n");
					
				}
			}finally{
				
				br.close();
				
			}
			
			
			
		}catch(Exception e) {
			System.out.print(e);
		}
		
		return content.toString();
	}
	

}
