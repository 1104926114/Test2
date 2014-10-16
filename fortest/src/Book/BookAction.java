package Book;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.util.*;

public class BookAction extends ActionSupport{
	private String titles;
	private String titless;
	private List<String[]> lists = new ArrayList<String[]>();
	
	public String Delete(){
		String ret = ERROR;
		Connection con = null;
		
		try{
			String URL = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_jing123";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL,"jm3xywmz0o","hzwix34lx12kyh13kijii04iiyki3llhzljh4h3h");
			
			String del ="delete from book where Title = '"+titles+"'";
			Statement st = con.createStatement();     
	        int count = st.executeUpdate(del); 
	              
	        System.out.println("《"+titles+"》已删除成功！^_^");
	        System.out.println("Book表中删除  "+count+" 条数据\n");      
			ret = SUCCESS;
		    		
		}catch (Exception e) {
			System.out.println("《"+titles+"》删除失败！T_T");
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
	
	public String Detail(){
		String ret = ERROR;
		Connection con = null;
		String[] alists = new String[10];
		
		try{
			String URL = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_jing123";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL,"jm3xywmz0o","hzwix34lx12kyh13kijii04iiyki3llhzljh4h3h");
			String det = "select * from book,author where Title ='"+titless+"' and book.AuthorID = author.AuthorID";
		    PreparedStatement ps = con.prepareStatement(det);
		    ResultSet rs = ps.executeQuery();
		    while (rs.next()){
		       	alists[0] = rs.getString("book.ISBN");
		       	alists[1] = rs.getString("book.Title");
		       	alists[2] = rs.getString("book.AuthorID");
		       	alists[3] = rs.getString("book.Publisher");
	        	alists[4] = rs.getString("book.PublishDate");
	        	alists[5] = rs.getString("book.Price");
	        	alists[6] = rs.getString("author.AuthorID");
	        	alists[7] = rs.getString("author.Name");
	        	alists[8] = rs.getString("author.Age");
	        	alists[9] = rs.getString("author.Country");
	        	lists.add(alists.clone());
	        	System.out.println("Success");
		        ret = SUCCESS;
		    }
			
		}catch (Exception e) {
	        return ret;
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

	public String getTitles() {
		return titles;
	}

	public void setTitles(String titles) {
		this.titles = titles;
	}

	public String getTitless() {
		return titless;
	}

	public void setTitless(String titless) {
		this.titless = titless;
	}

	public List<String[]> getLists() {
		return lists;
	}

	public void setLists(List<String[]> lists) {
		this.lists = lists;
	}
}
