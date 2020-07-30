/*
 * 06-06-2019
 *  
 */
package Modelos;

/**
 *
 * @author David Herrera
 */
public class Resumen {

    private Integer uso;
    private Integer libre;
    private Integer total;
    private Integer promedio;

    public Resumen() {
    }

    public Resumen(Integer uso, Integer libre, Integer total, Integer promedio) {
        this.uso = uso;
        this.libre = libre;
        this.total = total;
        this.promedio = promedio;
    }

    public Integer getUso() {
        return uso;
    }

    public void setUso(Integer uso) {
        this.uso = uso;
    }

    public Integer getLibre() {
        return libre;
    }

    public void setLibre(Integer libre) {
        this.libre = libre;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getPromedio() {
        return promedio;
    }

    public void setPromedio(Integer promedio) {
        this.promedio = promedio;
    }

}
