/*
 * 06-06-2019
 *  
 */
package Modelos;

import java.util.ArrayList;

/**
 *
 * @author David Herrera
 */
public class DatosJson {

    private Resumen resumen;
    private ArrayList<Registro> activos;
    private ArrayList<Registro> registros;

    public DatosJson() {
    }

    public DatosJson(Resumen resumen, ArrayList<Registro> activos, ArrayList<Registro> registros) {
        this.resumen = resumen;
        this.activos = activos;
        this.registros = registros;
    }

    public Resumen getResumen() {
        return resumen;
    }

    public ArrayList<Registro> getActivos() {
        return activos;
    }

    public ArrayList<Registro> getRegistros() {
        return registros;
    }

    public void setResumen(Resumen resumen) {
        this.resumen = resumen;
    }

    public void setActivos(ArrayList<Registro> activos) {
        this.activos = activos;
    }

    public void setRegistros(ArrayList<Registro> registros) {
        this.registros = registros;
    }

}
