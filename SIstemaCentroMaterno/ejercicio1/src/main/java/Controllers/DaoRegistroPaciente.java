package Controllers;

import Conexion.CConexion;
import Modelos.Paciente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoRegistroPaciente {

    boolean insertado = false;
    Connection connection = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public boolean insertarPaciente(Paciente paciente) {

        try {

            connection = new CConexion().estableceConexion();
            if (connection == null) {
                System.err.println("La conexión es null.");
                return insertado;
            }

            String sql = "INSERT INTO paciente (nombre, apellido,usuario, password, tipoDocumento, numeroDocumento,"
                    + " fechaNacimiento, telefono, correo) VALUES (? ,? ,?, ?, ?, ?, ?, ?, ?);";

            stmt = connection.prepareStatement(sql);
            stmt.setString(1, paciente.getNombre());
            stmt.setString(2, paciente.getApellido());
            stmt.setString(3, paciente.getUsuario());
            stmt.setString(4, paciente.getPassword());
            stmt.setString(5, paciente.getTipoDocumento());
            stmt.setString(6, paciente.getNumeroDocumento());
            stmt.setDate(7, new java.sql.Date(paciente.getFechaNacimiento().getTime()));
            stmt.setString(8, paciente.getTelefono());
            stmt.setString(9, paciente.getCorreo());

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                insertado = true;
            }
        } catch (SQLException e) {
            System.err.println("Error en SQL: " + e.getMessage());
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Error al cerrar conexión: " + e.getMessage());
            }
        }
        return insertado;
    }

    public boolean validarUsuario(String usuario, String password) {
        boolean valido = false;

        try {
            connection = new CConexion().estableceConexion();
            if (connection == null) {
                System.err.println("La conexión es null.");
                return valido;
            }

            String sql = "SELECT * FROM paciente WHERE usuario = ? AND password = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, password);

            rs = stmt.executeQuery();

            if (rs.next()) {
                valido = true;
            }
        } catch (SQLException e) {
            System.err.println("Error en SQL: " + e.getMessage());
        } finally {
            cerrarRecursos();
        }
        return valido;
    }

    public boolean verificarPaciente(String correo) {
        boolean existe = false;

        try {
            connection = new CConexion().estableceConexion();
            if (connection == null) {
                System.err.println("La conexión es null.");
                return existe;
            }

            String sql = " select * from paciente p\n"
                    + "where p.correo = '?' ";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, correo);
            rs = stmt.executeQuery();

            if (rs.next()) {
                existe = true;
            }
        } catch (SQLException e) {
            System.err.println("Error en SQL: " + e.getMessage());
        } finally {
            cerrarRecursos();
        }
        return existe;
    }

    private void cerrarRecursos() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            System.err.println("Error al cerrar conexión: " + e.getMessage());
        }
    }
    
   public boolean actualizarContrasena(String usuario, String nuevaContrasena) {
        boolean actualizado = false;

        try {
            connection = new CConexion().estableceConexion();
            if (connection == null) {
                System.err.println("La conexión es null.");
                return actualizado;
            }

            String sql = "  UPDATE paciente p SET p.password = ?  WHERE p.usuario = ? ";

            stmt = connection.prepareStatement(sql);
            stmt.setString(1, nuevaContrasena);
            stmt.setString(2, usuario);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                actualizado = true;
            }
        } catch (SQLException e) {
            System.err.println("Error en SQL: " + e.getMessage());
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Error al cerrar conexión: " + e.getMessage());
            }
        }
        return actualizado;
    }

}
