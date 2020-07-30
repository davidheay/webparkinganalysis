/*
 * 06-06-2019
 *  
 */
package Daos;

import Modelos.Registro;
import java.util.ArrayList;

/**
 *
 * @author David Herrera
 */
public interface RegistroDao {

    public ArrayList<Registro> listarRegistros();

    public ArrayList<Registro> listarActivos();

}
