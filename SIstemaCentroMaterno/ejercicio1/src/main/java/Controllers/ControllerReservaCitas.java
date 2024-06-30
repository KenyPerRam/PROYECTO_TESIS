package Controllers;

import Modelos.Paciente;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ControllerReservaCitas")
public class ControllerReservaCitas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session != null) {
            String usuario = (String) session.getAttribute("usuario");

            ArrayList<Paciente> pacientesLst = DaoReservaCitas.obtenerPacientesPorUsuario(usuario);

            if (!pacientesLst.isEmpty()) {
                // Agregar el atributo de sesión a la solicitud
                request.setAttribute("usuario", usuario);

                Paciente paciente = pacientesLst.get(0);

                String fecha = request.getParameter("fecha");
                String turno = request.getParameter("turno");
                String medico = request.getParameter("medico");
                String especialidad = request.getParameter("especialidad");
                String descripcion = request.getParameter("descripcion");

                boolean citaGuardada = false;
                citaGuardada = DaoReservaCitas.reservarCita(paciente,fecha, especialidad, turno, medico, descripcion);

                if (citaGuardada) {
                    // Redirigir al historialCitas.jsp
                    request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
                } else {
                    response.sendRedirect("reservaCita.jsp");
                }
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
