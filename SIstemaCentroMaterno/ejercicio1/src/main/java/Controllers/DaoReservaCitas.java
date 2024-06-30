package Controllers;

import Conexion.CConexion;
import Modelos.Paciente;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class DaoReservaCitas {

    public static ArrayList<Paciente> obtenerPacientesPorUsuario(String usuario) {
        ArrayList<Paciente> pacientes = new ArrayList<>();

        Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            connection = new CConexion().estableceConexion();
            if (connection == null) {
                System.err.println("La conexión es null.");
                return pacientes;
            }

            String sql = "SELECT id_pc, nombre, apellido, numeroDocumento, fechaNacimiento, telefono FROM paciente WHERE usuario = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, usuario);

            rs = stmt.executeQuery();

            while (rs.next()) {
                Paciente paciente = new Paciente();
                paciente.setId(rs.getInt("id_pc"));
                paciente.setNombre(rs.getString("nombre"));
                paciente.setApellido(rs.getString("apellido"));
                paciente.setNumeroDocumento(rs.getString("numeroDocumento"));
                paciente.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                paciente.setTelefono(rs.getString("telefono"));

                pacientes.add(paciente);
            }
        } catch (SQLException e) {
            System.err.println("Error en SQL al obtener pacientes: " + e.getMessage());
        } finally {
            cerrarRecursos(connection, stmt, rs);
        }

        return pacientes;
    }

    public static boolean reservarCita(Paciente paciente, String fecha, String especialidad, String turno, String medico, String detalle) {
        boolean insertado = false;
        Connection connection = null;
        PreparedStatement stmt = null;

        try {
            // Parsear la fecha
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date fechaUtil = sdf.parse(fecha);
            java.sql.Date fechaSQL = new java.sql.Date(fechaUtil.getTime());

            connection = new CConexion().estableceConexion();
            if (connection == null) {
                System.err.println("La conexión es null para inserción de cita.");
                return insertado;
            }

            String sqlInsert = "INSERT INTO reservarCita (nombre_rc, apellido_rc, dni_rc, fecha_nacimiento_rc, numero_celular_rc, especialidad_rc, turno_rc, medico_rc, fecha_cita_rc, detalle_rc, estado_rc, paciente_id) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            stmt = connection.prepareStatement(sqlInsert);
            stmt.setString(1, paciente.getNombre());
            stmt.setString(2, paciente.getApellido());
            stmt.setString(3, paciente.getNumeroDocumento());
            stmt.setDate(4, new java.sql.Date(paciente.getFechaNacimiento().getTime()));
            stmt.setString(5, paciente.getTelefono());
            stmt.setString(6, especialidad);
            stmt.setString(7, turno);
            stmt.setString(8, medico);
            stmt.setDate(9, fechaSQL);
            stmt.setString(10, detalle);
            stmt.setString(11, "Pendiente");
            stmt.setInt(12, paciente.getId());

            int filasInsertadas = stmt.executeUpdate();
            if (filasInsertadas > 0) {
                insertado = true;
            }
        } catch (SQLException e) {
            System.err.println("Error en SQL para inserción de cita: " + e.getMessage());
        } catch (ParseException e) {
            System.err.println("Error al parsear la fecha: " + e.getMessage());
        } finally {
            cerrarRecursos(connection, stmt, null);
        }

        return insertado;
    }

    private static void cerrarRecursos(Connection connection, PreparedStatement stmt, ResultSet rs) {
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
            System.err.println("Error al cerrar recursos: " + e.getMessage());
        }
    }
}
