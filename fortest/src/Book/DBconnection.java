package Book;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;

public class DBconnection extends ActionSupport{
	private String author;
	private String book;
	private List<String[]> mylist = new ArrayList<String[]>();
	private List<String[]> authorlist = new ArrayList<String[]>();
	private List<String[]> booklist = new ArrayList<String[]>();
	
	public String query(){
		String ret = ERROR;
		Connection con = null;
		String[] my_list = new String[2];
		String[] author_list = new String[4];
		String[] book_list = new String[6];
		
		try{
			String URL = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_jing123";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL,"jm3xywmz0o","hzwix34lx12kyh13kijii04iiyki3llhzljh4h3h");
			String sql1 = "SELECT author.* FROM author,book where Name = '"+author+"' or (Title = '"+book+"' and author.AuthorID = book.AuthorID)";
	        PreparedStatement ps1 = con.prepareStatement(sql1);
	        ResultSet rs1 = ps1.executeQuery();

	        while (rs1.next()) {
	        	my_list[0] = rs1.getString("Name");
	        	author_list[0] = rs1.getString("AuthorID");
	        	author_list[1] = rs1.getString("Name");
	        	author_list[2] = rs1.getString("Age");
	        	author_list[3] = rs1.getString("Country");
	        	authorlist.add(author_list.clone());
	        }
	        
	        String sql2 = "select * from book where AuthorID = '"+author_list[0]+"' or Title ='"+book+"'";
	        PreparedStatement ps2 = con.prepareStatement(sql2);
	        ResultSet rs2 = ps2.executeQuery();
	        
	        while (rs2.next()){
	        	my_list[1] = rs2.getString("Title");
	        	book_list[0] = rs2.getString("ISBN");
	        	book_list[1] = rs2.getString("Title");
	        	book_list[2] = rs2.getString("AuthorID");
	        	book_list[3] = rs2.getString("Publisher");
	        	book_list[4] = rs2.getString("PublishDate");
	        	book_list[5] = rs2.getString("Price");
	        	mylist.add(my_list.clone());
	        	booklist.add(book_list.clone());
	        	ret = SUCCESS;
	        }
		}catch (Exception e) {
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public List<String[]> getMylist() {
		return mylist;
	}

	public void setMylist(List<String[]> mylist) {
		this.mylist = mylist;
	}

	public List<String[]> getAuthorlist() {
		return authorlist;
	}

	public void setAuthorlist(List<String[]> authorlist) {
		this.authorlist = authorlist;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public List<String[]> getBooklist() {
		return booklist;
	}

	public void setBooklist(List<String[]> booklist) {
		this.booklist = booklist;
	}
}