package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.cj.jdbc.Driver;

public class CConexion {

    private Connection conectar;

    // Parámetros de conexión
    private static final String USUARIO = "root";
    private static final String CONTRASEÑA = "root";
    private static final String BD = "centro_maternoinfantil";
    private static final String IP = "localhost";
    private static final String PUERTO = "3306";
    private static final String CADENA = "jdbc:mysql://" + IP + ":" + PUERTO + "/" + BD + "?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";

    // Método para obtener la conexión
    public Connection estableceConexion() {
        try {
            // Usar el driver MySQL correcto

            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver MySQL cargado correctamente.");

            conectar = DriverManager.getConnection(CADENA, USUARIO, CONTRASEÑA);
            System.out.println("Conexión exitosa a la base de datos."); // Mensaje de éxito
        } catch (ClassNotFoundException e) {
            System.err.println("Error al cargar el driver de MySQL: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Error al establecer la conexión: " + e.getMessage());
        }
        return conectar;
    }

    // Método principal para probar la conexión
    public static void main(String[] args) {
        CConexion conexion = new CConexion();
        Connection connection = conexion.estableceConexion();
        if (connection != null) {
            try {
                connection.close(); // Cerrar la conexión después de probarla
            } catch (SQLException e) {
                System.err.println("Error al cerrar la conexión de prueba: " + e.getMessage());
            }
        }
    }
}
