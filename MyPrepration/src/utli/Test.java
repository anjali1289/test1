package utli;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.StudentDao;
import com.demo.Student;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Test() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		System.out.println(name);
	     int age= Integer.parseInt(request.getParameter("age"));
	      System.out.println(age);
		 String username= request.getParameter("username");
		 System.out.println(username);
		 String pass= request.getParameter("pass");
		 System.out.println(pass);
		 Student s= new Student(name,age,username,pass);
		 StudentDao d= new StudentDao();
		 if (d.insert(s) == true) {
				RequestDispatcher ds = request.getRequestDispatcher("insert.jsp");
				ds.include(request, response);
		}
		
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
}
}
