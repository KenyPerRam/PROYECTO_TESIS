import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controllers.DaoMedicos;
import Modelos.Medico; 

@WebServlet("/ControllerMedicos")
public class ControllerMedicos extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        String turno = request.getParameter("turno");
        String especialidad = request.getParameter("especialidad");

        DaoMedicos dao = new DaoMedicos();
        ArrayList<Medico> medicos = dao.ComboMedicos(turno, especialidad);

        // Construir manualmente la respuesta JSON
        StringBuilder json = new StringBuilder();
        json.append("[");
        for (int i = 0; i < medicos.size(); i++) {
            Medico medico = medicos.get(i);
            json.append("{");
            json.append("\"nombreCompleto\": \"" + medico.getNombreCompleto_M() + "\"");
            json.append("}");

            if (i < medicos.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");

        out.print(json.toString());
        out.flush();
    }
}
