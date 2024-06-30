package Controllers;

import Conexion.CConexion;
import Modelos.Medico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoMedicos {

    public ArrayList<Medico> MostrarMedicos() {
        ArrayList<Medico> objLisMedico = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = "     select d.nombre, d.apellido,d.telefono, d.correo ,\n"
                        + "    e.nombre_especialidad especialidad from Doctor d\n"
                        + "    inner join Especialidades e \n"
                        + "    on d.especialidad_id = e.id_especialidad";

                stmt = conn.prepareStatement(sql);

                rs = stmt.executeQuery();

                while (rs.next()) {
                    Medico med = new Medico();

                    med.setNombre_M(rs.getString("nombre"));
                    med.setApellido_M(rs.getString("apellido"));
                    med.setTelefono_M(rs.getString("telefono"));
                    med.setCorreo(rs.getString("correo"));
                    med.setEspecialidad_descrip(rs.getString(5));
                    objLisMedico.add(med);

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

        return objLisMedico;
    }

    public ArrayList<Medico> ComboMedicos(String turno, String especialidad) {
        ArrayList<Medico> objLisMedico = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = "  select distinct concat(d.nombre, ' ', d.apellido) nombre_Medico from horarios h\n"
                        + "inner join  doctor d on h.doctor_id = d.id_doctor\n"
                        + "inner join especialidades e on h.especialidad_id = e.id_especialidad\n"
                        + "where h.turno = '" + turno + "'\n"
                        + "and e.nombre_especialidad = '" + especialidad + "'";

                stmt = conn.prepareStatement(sql);

                rs = stmt.executeQuery();

                while (rs.next()) {
                    Medico med = new Medico();

                    med.setNombreCompleto_M(rs.getString(1));
                    objLisMedico.add(med);

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

        return objLisMedico;
    }

}
