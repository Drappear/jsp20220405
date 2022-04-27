package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet21
 */
@WebServlet("/S14Servlet21")
public class S14Servlet21 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet21() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		
		if(keyword == null) {
			keyword = "";
		}
		
		keyword = keyword.trim();
		keyword = "%" + keyword + "%";
		
		String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate, Photo "
				+ "FROM Employees "
				+ "WHERE LastName LIKE ? OR FirstName LIKE ? "
				+ "ORDER BY EmployeeID";
		
		List<Employee> list = new ArrayList<>();
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			
			try(ResultSet rs = pstmt.executeQuery();){
				
				while(rs.next()) {
					Employee e = new Employee();
					
					e.setEmployeeId(rs.getInt(1));
					e.setLastName(rs.getString(2));
					e.setFirstName(rs.getString(3));
					e.setBirthDate(rs.getString(4));
					e.setPhoto(rs.getString(5));
					
					list.add(e);
				}
			}		
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("employeeName", list);
		
		String path = "/WEB-INF/view/chap14/ex15.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
