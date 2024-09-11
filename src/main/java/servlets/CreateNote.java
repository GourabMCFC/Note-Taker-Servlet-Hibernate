package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import entities.Note;
import utils.HibernateUtil;

@MultipartConfig
public class CreateNote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Note note = new Note(request.getParameter("title"), request.getParameter("description"));
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			session.beginTransaction();
			session.persist(note);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		out.print("done");
	}

}
