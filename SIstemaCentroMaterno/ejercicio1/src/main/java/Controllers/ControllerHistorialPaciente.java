package Controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Modelos.ReservarCita;

@WebServlet("/ControllerHistorialPaciente")
public class ControllerHistorialPaciente extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("usuario") != null) {
            String usuario = (String) session.getAttribute("usuario");

            if (request.getParameter("cuadroBus") != null) {

                String filtro = request.getParameter("filtro");
                String cuadroBus = request.getParameter("cuadroBus");

                DaoHistorialCitas daoHistorial = new DaoHistorialCitas();

                ArrayList<ReservarCita> busquedaHistorial = daoHistorial.obtenerBusquedaHistorialCitas(usuario, filtro, cuadroBus);

                request.setAttribute("busquedaHistorial", busquedaHistorial);
                request.getRequestDispatcher("historialCitas.jsp").forward(request, response);

            } else if (request.getParameter("eliminar") != null) {
                int idCita = Integer.parseInt(request.getParameter("eliminar"));

                String estado = "Pendiente";

                DaoHistorialCitas daoHistorial = new DaoHistorialCitas();

                if (daoHistorial.eliminarCitaPorIdYEstado(idCita, estado)) {

                    response.sendRedirect("historialCitas.jsp");
                } else {

                    request.setAttribute("mensaje", "No se puede eliminar la cita porque no está en estado Pendiente.");
                    request.getRequestDispatcher("historialCitas.jsp").forward(request, response);
                }
            } else {

                response.sendRedirect("MenuPrincipal.jsp");
            }
        } else {
            response.sendRedirect("MenuPrincipal.jsp");
        }
    }
}
