package servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.google.gson.Gson;

import entities.Note;
import utils.HibernateUtil;

@MultipartConfig
public class CreateNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/JSON");
		Note note = new Note(request.getParameter("title"), request.getParameter("description"));
		Map<String, String> responseJSON = new HashMap<String, String>();
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			session.beginTransaction();
			session.persist(note);
			session.getTransaction().commit();
			responseJSON.put("success", "created");
		} catch (HibernateException e) {
			e.printStackTrace();
			responseJSON.put("error", e.getMessage());
		} finally {
			response.getWriter().print(gson.toJson(responseJSON));
			responseJSON.clear();
		}
	}

	@Override
	public void init() throws ServletException {
		gson = new Gson();
	}

}
