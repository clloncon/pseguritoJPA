package cl.awake.segurito.model;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="reporteaccidente")
public class ReporteAccidente {
  //Variables//
    
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SEQUENCE1")
    @SequenceGenerator(name="SEQUENCE1", sequenceName="ID_REPORTE_SEQ", allocationSize=1)
    private int id_reporte;
    
    @Temporal(value=TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fecha;
    private String direccion;
    private String labor;
    private String descripcion;
    
    @JoinColumn(name="cliente_id_cliente")
    @ManyToOne
    private Cliente cliente;
    
    //Constructores
    public ReporteAccidente() {
        
    }

    public ReporteAccidente(int id_reporte, Date fecha, String direccion, String labor, String descripcion,
            Cliente cliente) {
        this.id_reporte = id_reporte;
        this.fecha = fecha;
        this.direccion = direccion;
        this.labor = labor;
        this.descripcion = descripcion;
        this.cliente = cliente;
    }
    
  //Getters & Setters//

    public int getId_reporte() {
        return id_reporte;
    }

    public void setId_reporte(int id_reporte) {
        this.id_reporte = id_reporte;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getLabor() {
        return labor;
    }

    public void setLabor(String labor) {
        this.labor = labor;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    @Override
    public String toString() {
        return "ReporteAccidente [id_reporte=" + id_reporte + ", fecha=" + fecha + ", direccion=" + direccion
                + ", labor=" + labor + ", descripcion=" + descripcion + ", cliente=" + cliente + "]";
    }
    
    
}
