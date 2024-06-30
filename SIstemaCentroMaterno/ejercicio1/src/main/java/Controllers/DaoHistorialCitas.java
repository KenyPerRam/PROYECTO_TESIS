package Controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Conexion.CConexion;
import Modelos.ReservarCita;

public class DaoHistorialCitas {

    public ArrayList<ReservarCita> obtenerHistorialCitasPorUsuario(String usu) {
        ArrayList<ReservarCita> historialCitas = new ArrayList<>();

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = "select rc.id_rc , rc.nombre_rc , rc.apellido_rc, rc.dni_rc , rc.turno_rc , rc.especialidad_rc \n"
                        + ", rc.medico_rc,rc.fecha_cita_rc, rc.estado_rc from reservarCita rc inner join paciente p \n"
                        + "on p.id_pc =  rc.paciente_id where p.usuario = '" + usu + "'";

                stmt = conn.prepareStatement(sql);

                rs = stmt.executeQuery();

                while (rs.next()) {
                    ReservarCita cita = new ReservarCita();
                    cita.setId_rc(rs.getInt("id_rc"));
                    cita.setNombre_rc(rs.getString("nombre_rc"));
                    cita.setApellido_rc(rs.getString("apellido_rc"));
                    cita.setDni_rc(rs.getString("dni_rc"));
                    cita.setTurno_rc(rs.getString("turno_rc"));
                    cita.setEspecialidad_rc(rs.getString("especialidad_rc"));
                    cita.setMedico_rc(rs.getString("medico_rc"));
                    cita.setFecha_cita_rc(rs.getDate("fecha_cita_rc"));
                    cita.setEstado_rc(rs.getString("estado_rc"));

                    historialCitas.add(cita);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return historialCitas;
    }

    public boolean eliminarCitaPorIdYEstado(int idCita, String estado) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = "delete from reservarCita rc \n"
                        + "where rc.estado_rc = ? \n"
                        + "and rc.id_rc = ? ";

                stmt = conn.prepareStatement(sql);
                stmt.setString(1, estado);
                stmt.setInt(2, idCita);

                int rowsAffected = stmt.executeUpdate();

                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return false;
    }

    public ArrayList<ReservarCita> obtenerBusquedaHistorialCitas(String usu, String filtro, String cuadroBus) {
        ArrayList<ReservarCita> historialCitas = new ArrayList<>();

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = "  select rc.id_rc , rc.nombre_rc, rc.apellido_rc, rc.dni_rc, rc.turno_rc,\n"
                        + "   rc.especialidad_rc, rc.medico_rc, rc.fecha_cita_rc, rc.estado_rc\n"
                        + "from reservarCita rc  inner join paciente p \n"
                        + "on rc.paciente_id = p.id_pc \n"
                        + "where (rc.medico_rc like '%" + cuadroBus + "%'\n"
                        + "   or rc.especialidad_rc like '%" + cuadroBus + "%')\n"
                        + "   and (case when '%" + filtro + "%' = '' then true\n"
                        + "   else rc.estado_rc like '%" + filtro + "%' end)   "
                        + "  and p.usuario = 'brequejo'";

                stmt = conn.prepareStatement(sql);

                rs = stmt.executeQuery();

                while (rs.next()) {
                    ReservarCita cita = new ReservarCita();
                    cita.setId_rc(rs.getInt("id_rc"));
                    cita.setNombre_rc(rs.getString("nombre_rc"));
                    cita.setApellido_rc(rs.getString("apellido_rc"));
                    cita.setDni_rc(rs.getString("dni_rc"));
                    cita.setTurno_rc(rs.getString("turno_rc"));
                    cita.setEspecialidad_rc(rs.getString("especialidad_rc"));
                    cita.setMedico_rc(rs.getString("medico_rc"));
                    cita.setFecha_cita_rc(rs.getDate("fecha_cita_rc"));
                    cita.setEstado_rc(rs.getString("estado_rc"));

                    historialCitas.add(cita);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return historialCitas;
    }

}
