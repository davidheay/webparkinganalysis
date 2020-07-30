/*
 * 06-06-2019
 *  
 */
package Daos;

import Modelos.Resumen;
import Utilidades.Conn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author David Herrera
 */
public class ResumenDaoImpl implements ResumenDao {

    @Override
    public Resumen getResumen() {
        Resumen resumen = new Resumen();
        Conn conexion = new Conn();

        try {

            String sql = "select (select count(id) from Placas where FechaOUT is null)as enuso,(select CapacidadNum from Capacidad ) as libre,(select count(id) from Placas where FechaIN is not null and FechaOUT is not null) as totales,(select ceiling(avg(ceiling(datediff(second,FechaIN,FechaOUT)/60.0))) from Placas where FechaIN is not null and FechaOUT is not null ) as promedio";

            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {

                resumen.setUso(resultSet.getInt(1));
                resumen.setLibre(resultSet.getInt(2));
                resumen.setTotal(resultSet.getInt(3));
                resumen.setPromedio(resultSet.getInt(4));

            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            System.out.println("listar resumkenres" + ex);
        } finally {
            conexion.cerrarConexion();
        }
        return resumen;
    }

}
