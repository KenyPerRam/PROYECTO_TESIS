package Controllers;

import Modelos.Paciente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ControllerRegistroPaciente1
 */
@WebServlet("/ControllerRegistroPaciente1")
public class ControllerRegistroPaciente1 extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerRegistroPaciente1</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerRegistroPaciente1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener parámetros del formulario
        String nombre = request.getParameter("username");
        String apellido = request.getParameter("lastname");
        String usuario = request.getParameter("user");
        String contra = request.getParameter("password");
        String tipoDocumento = request.getParameter("document-type");
        String numeroDocumento = request.getParameter("document-number");
        String fechaNacimientoStr = request.getParameter("birthdate");
        String telefono = request.getParameter("phone");
        String correo = request.getParameter("email");
        java.util.Date fechaNacimiento = null;
        try {
            fechaNacimiento = new java.text.SimpleDateFormat("yyyy-MM-dd").parse(fechaNacimientoStr);
        } catch (java.text.ParseException e) {
            e.printStackTrace();
        }

        Paciente paciente = new Paciente();
        paciente.setNombre(nombre);
        paciente.setApellido(apellido);
        paciente.setUsuario(usuario);
        paciente.setPassword(contra);
        paciente.setTipoDocumento(tipoDocumento);
        paciente.setNumeroDocumento(numeroDocumento);
        paciente.setFechaNacimiento(new java.sql.Date(fechaNacimiento.getTime()));
        paciente.setTelefono(telefono);
        paciente.setCorreo(correo);

        DaoRegistroPaciente registroPacienteDAO = new DaoRegistroPaciente();

        boolean validarPaciente = registroPacienteDAO.verificarPaciente(correo);

        if (validarPaciente) {
            response.sendRedirect("CrearUsuario.html");
        } else {
            boolean insertado = registroPacienteDAO.insertarPaciente(paciente);

            if (insertado) {
                // Establecer sesión para el usuario registrado
                HttpSession session = request.getSession();
                session.setAttribute("usuario", usuario);
                response.sendRedirect("MenuPrincipal.jsp");
            } else {
                response.sendRedirect("crearUsuario.jsp");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
