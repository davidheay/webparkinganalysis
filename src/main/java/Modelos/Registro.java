/*
 * 06-06-2019
 *  
 */
package Modelos;

/**
 *
 * @author David Herrera
 */
public class Registro {

    private String placa;
    private String fechaIN;
    private String fechaOUT;
    private String duracion;
    private String cobro;

    public Registro() {
    }

    public Registro(String placa, String fechaIN, String fechaOUT, String duracion, String cobro) {
        this.placa = placa;
        this.fechaIN = fechaIN;
        this.fechaOUT = fechaOUT;
        this.duracion = duracion;
        this.cobro = cobro;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getCobro() {
        return cobro;
    }

    public void setCobro(String cobro) {
        this.cobro = cobro;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getFechaIN() {
        return fechaIN;
    }

    public void setFechaIN(String fechaIN) {
        this.fechaIN = fechaIN;
    }

    public String getFechaOUT() {
        return fechaOUT;
    }

    public void setFechaOUT(String fechaOUT) {
        this.fechaOUT = fechaOUT;
    }

    @Override
    public String toString() {
        return "Registro{" + "placa=" + placa + ", fechaIN=" + fechaIN + ", fechaOUT=" + fechaOUT + '}';
    }

}
