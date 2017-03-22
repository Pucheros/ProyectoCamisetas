package arqSw.Hibernate;

import java.util.HashSet;
import java.util.Set;

public class Cliente  implements java.io.Serializable {


     private Integer idCliente;
     private String usuario;
     private String clave;
     private String ubicacion;
     private String formaPago;
     private Set<Venta> ventas = new HashSet<Venta>(0);

    public Cliente() {
    }

    public Cliente(String usuario, String clave, String ubicacion, String formaPago, Set<Venta> ventas) {
       this.usuario = usuario;
       this.clave = clave;
       this.ubicacion = ubicacion;
       this.formaPago = formaPago;
       this.ventas = ventas;
    }
   
    public Integer getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(Integer idCliente) {
        this.idCliente = idCliente;
    }
    public String getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    public String getClave() {
        return this.clave;
    }
    
    public void setClave(String clave) {
        this.clave = clave;
    }
    public String getUbicacion() {
        return this.ubicacion;
    }
    
    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
    public String getFormaPago() {
        return this.formaPago;
    }
    
    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }
    public Set<Venta> getVentas() {
        return this.ventas;
    }
    
    public void setVentas(Set<Venta> ventas) {
        this.ventas = ventas;
    }




}


