package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Modelos.Paciente;
import Modelos.ReservarCita;

@WebServlet("/ControllerRecuperarContrasena")
public class ControllerRecuperarContrasena extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String nuevaContrasena = request.getParameter("nuevaContraseña");
        String confirmarContrasena = request.getParameter("confirmarContraseña");

        if (nuevaContrasena.equals(confirmarContrasena)) {
            DaoRegistroPaciente daoPaciente = new DaoRegistroPaciente();
            boolean actualizado = daoPaciente.actualizarContrasena(usuario, nuevaContrasena);

            if (actualizado) {
                // Establecer sesión para el usuario actualizado
                HttpSession session = request.getSession();
                session.setAttribute("usuario", usuario);

                // Redirigir a la página principal o al historial de citas según corresponda
                if (request.getParameter("fromHistorial") != null) {
                    response.sendRedirect("ControllerHistorialPaciente");
                } else {
                    request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
                    request.setAttribute("mensaje", "Contraseña actualizada correctamente.");
                }
            } else {
                request.getRequestDispatcher("RecuperarContra.jsp").forward(request, response);
                request.setAttribute("error", "Error al actualizar la contraseña. Verifique su usuario.");
            }
        } else {
            request.getRequestDispatcher("RecuperarContra.jsp").forward(request, response);
            request.setAttribute("error", "Las contraseñas no coinciden.");
        }
    }
}
