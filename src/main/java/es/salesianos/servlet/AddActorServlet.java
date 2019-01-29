package es.salesianos.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.salesianos.model.Actor;
import es.salesianos.model.assembler.ExamAssembler;
import es.salesianos.service.ActorService;

/**
 * Servlet implementation class addOwnerServlet
 */
public class AddActorServlet extends HttpServlet {
	private ActorService service = new ActorService();
	private ExamAssembler assembler = new ExamAssembler();

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String parameter = req.getParameter("beginDate");
		List<Actor> listAllActors = new ArrayList<>();
		if (parameter != null) {
			int beginDate = Integer.parseInt(parameter);
			int endDate = Integer.parseInt(req.getParameter("endDate"));
			listAllActors = service.filterAllActor(beginDate, endDate);
		} else {
			Actor actor = assembler.assembleActorFromRequest(req);
			service.addActor(actor);
		}
		req.setAttribute("listAllActors", listAllActors);
		
		redirect(req,resp);
	}

	protected void redirect(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addActor.jsp");
		dispatcher.forward(req,resp);
	}
}
