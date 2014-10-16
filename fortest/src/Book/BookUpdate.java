--hahahahahaha
package Book;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.util.*;

public class BookUpdate extends ActionSupport{
	private String title;
	private String authorid;
	private String publisher;
	private String publishdate;
	private String price;
	private String name;
	private String age;
	private String country;
	
	public String UpdateBook(){
		String ret = ERROR;
		Connection con = null;
		
		try{
			String URL = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_jing123";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL,"jm3xywmz0o","hzwix34lx12kyh13kijii04iiyki3llhzljh4h3h");
			
			String upd1 ="update book set AuthorID='"+authorid+"',Publisher='"+publisher+"',PublishDate='"+publishdate+"',Price='"+price+"' where Title='"+title+"'";
			String upd2 ="replace into author values('"+authorid+"','"+name+"','"+age+"','"+country+"')";
			Statement st = con.createStatement();     
	        int count1 = st.executeUpdate(upd1); 
	        int count2 = st.executeUpdate(upd2); 
	              
	        System.out.println("《"+title+"》信息更新成功!  ^_^");
	        System.out.println("Book表中添加 "+count1+" 条数据");
	        System.out.println("Author表中添加"+count2+" 条数据");
			ret = SUCCESS;
		    		
		}catch (Exception e) {
			System.out.println("《"+title+"》信息更新失败！T_T");
			ret = ERROR;
	    }finally {
	        if (con != null) {
	            try {
	               con.close();
	            } catch (Exception e) {
	            }
	        }
	    }
		return ret;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthorid() {
		return authorid;
	}

	public void setAuthorid(String authorid) {
		this.authorid = authorid;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPublishdate() {
		return publishdate;
	}

	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}