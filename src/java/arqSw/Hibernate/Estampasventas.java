package arqSw.Hibernate;
// Generated 20/03/2017 08:42:47 PM by Hibernate Tools 3.6.0



/**
 * Estampasventas generated by hbm2java
 */
public class Estampasventas  implements java.io.Serializable {


     private EstampasventasId id;
     private Venta venta;
     private Estampa estampa;

    public Estampasventas() {
    }

    public Estampasventas(EstampasventasId id, Venta venta, Estampa estampa) {
       this.id = id;
       this.venta = venta;
       this.estampa = estampa;
    }
   
    public EstampasventasId getId() {
        return this.id;
    }
    
    public void setId(EstampasventasId id) {
        this.id = id;
    }
    public Venta getVenta() {
        return this.venta;
    }
    
    public void setVenta(Venta venta) {
        this.venta = venta;
    }
    public Estampa getEstampa() {
        return this.estampa;
    }
    
    public void setEstampa(Estampa estampa) {
        this.estampa = estampa;
    }




}


