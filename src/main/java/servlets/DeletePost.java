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
public class DeletePost extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Map<String, String> responseMap = new HashMap<String, String>();
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			Note note = session.get(Note.class, id);
			session.beginTransaction();
			session.delete(note);
			session.getTransaction().commit();
			responseMap.put("success", "deleted");
		} catch (HibernateException e) {
			responseMap.put("error", e.getMessage());
			e.printStackTrace();
		} finally {
			response.setContentType("text/JSON");
			response.getWriter().print(gson.toJson(responseMap));
		}
	}

	@Override
	public void init() throws ServletException {
		gson = new Gson();
	}

}
