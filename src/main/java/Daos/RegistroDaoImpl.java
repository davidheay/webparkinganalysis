/*
 * 06-06-2019
 *  
 */
package Daos;

import Modelos.Registro;
import Utilidades.Conn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author David Herrera
 */
public class RegistroDaoImpl implements RegistroDao {

    @Override
    public ArrayList<Registro> listarRegistros() {
        ArrayList<Registro> registros = new ArrayList<>();
        Conn conexion = new Conn();

        try {

            String sql = "Select  PLacaIN,FechaIN,FechaOUT,round(datediff(second,FechaIN,FechaOUT)/60.0,2),ceiling((datediff(second,FechaIN,FechaOUT)/60.0))*80 from Placas where FechaIN is not null and FechaOUT is not null order by id desc";

            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Registro registro = new Registro();
                registro.setPlaca(resultSet.getString(1));
                registro.setFechaIN(resultSet.getString(2));
                registro.setFechaOUT(resultSet.getString(3));
                registro.setDuracion(resultSet.getString(4).substring(0, 3));
                registro.setCobro(resultSet.getString(5));

                registros.add(registro);

            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            System.out.println("listar registros" + ex);
        } finally {
            conexion.cerrarConexion();
        }
        return registros;

    }

    @Override
    public ArrayList<Registro> listarActivos() {
        ArrayList<Registro> registros = new ArrayList<>();
        Conn conexion = new Conn();

        try {

            String sql = " select PlacaIn,FechaIN,datediff(second,FechaIN,GETDATE()) from Placas where FechaOUT is null order by id desc";

            PreparedStatement prepareStatemente = (PreparedStatement) conexion.getConexion().prepareStatement(sql);
            ResultSet resultSet = prepareStatemente.executeQuery();
            while (resultSet.next()) {
                Registro registro = new Registro();
                registro.setPlaca(resultSet.getString(1));
                registro.setFechaIN(resultSet.getString(2).substring(0,19));
                registro.setDuracion(resultSet.getString(3));

                registros.add(registro);

            }
            prepareStatemente.close();
            resultSet.close();
        } catch (Exception ex) {
            System.out.println("listar registros activos" + ex);
        } finally {
            conexion.cerrarConexion();
        }
        return registros;

    }

}
