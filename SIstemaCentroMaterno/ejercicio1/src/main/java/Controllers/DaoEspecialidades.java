package Controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Conexion.CConexion;
import Modelos.Especialidad;
import Modelos.ReservarCita;

public class DaoEspecialidades {

    public ArrayList<Especialidad> MostrarEspecialidades() {
        ArrayList<Especialidad> objLisEspecialidad = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = " select e.nombre_especialidad , e.descripcion from Especialidades e";

                stmt = conn.prepareStatement(sql);

                rs = stmt.executeQuery();

                while (rs.next()) {
                    Especialidad esp = new Especialidad();
                    esp.setNombre_especialidad(rs.getString("nombre_especialidad"));
                    esp.setDescripcion(rs.getString("descripcion"));
                    objLisEspecialidad.add(esp);
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

        return objLisEspecialidad;
    }
    
    
      public ArrayList<Especialidad> ComboEspecialidades() {
        ArrayList<Especialidad> objLisEspecialidad = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            CConexion conexion = new CConexion();
            conn = conexion.estableceConexion();

            if (conn != null) {
                String sql = " select e.nombre_especialidad from Especialidades e";

                stmt = conn.prepareStatement(sql);

                rs = stmt.executeQuery();

                while (rs.next()) {
                    Especialidad esp = new Especialidad();
                    esp.setNombre_especialidad(rs.getString(1));
                    objLisEspecialidad.add(esp);
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

        return objLisEspecialidad;
    }
}
