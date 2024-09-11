package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

import entities.Note;
import utils.HibernateUtil;

public class GetNotes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Note> notes = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			Query<Note> query = session.createQuery("from Note", Note.class);
			notes = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		request.setAttribute("notes", notes);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("all_notes.jsp");
		requestDispatcher.forward(request, response);
	}

}
