package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.ReplyDao;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class ReplyInsertServle
 */
@WebServlet("/reply/insert")
public class ReplyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;  
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	this.ds = (DataSource)application.getAttribute("dbpool");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyContent = request.getParameter("replyContent");
		String idStr = request.getParameter("boardId");
		
		ReplyDto replyDto = new ReplyDto();
		
		replyDto.setContent(replyContent);
		replyDto.setBoardId(Integer.parseInt(idStr));
		
		boolean success = false;
		
		try (Connection con = ds.getConnection()) {
			ReplyDao replyDao = new ReplyDao();
			success = replyDao.insert(con, replyDto);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		String location = request.getContextPath() + "/board/get?id=" + replyDto.getBoardId();
		if(success) {
			location += "&rs=true";
		} else {
			location += "&rs=false";
		}
		
		response.sendRedirect(location);
	}

}
