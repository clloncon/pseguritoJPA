package cl.awake.segurito.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="detallefactura")
public class DetalleFactura {
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SEQUENCE1")
    @SequenceGenerator(name="SEQUENCE1", sequenceName="ID_DETALLEFACTURA_SEQ", allocationSize=1)
	private int id_detallefactura;
	private String nombre;
	private int precio;
	private int cantidad;
	@JoinColumn(name="factura_id_factura")
	@ManyToOne
	private Factura factura; //FK

	
	//Constructures//
	
	public DetalleFactura() {
		super();
	}

	public DetalleFactura(String nombre, int precio, int cantidad, Factura factura) {
		super();
		this.nombre = nombre;
		this.precio = precio;
		this.cantidad = cantidad;
		this.factura = factura;
	}
	
	public DetalleFactura(int id_detallefactura, String nombre, int precio, int cantidad, Factura factura) {
		super();
		this.id_detallefactura = id_detallefactura;
		this.nombre = nombre;
		this.precio = precio;
		this.cantidad = cantidad;
		this.factura = factura;
	}


	public DetalleFactura(int id_detallefactura) {
		super();
		this.id_detallefactura = id_detallefactura;
	}
	
	
	//Getters & Setters//
	
	public int getId_detallefactura() {
		return id_detallefactura;
	}

	public void setId_detallefactura(int id_detallefactura) {
		this.id_detallefactura = id_detallefactura;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Factura getFactura() {
		return factura;
	}

	public void setFactura(Factura factura) {
		this.factura = factura;
	}
	
	//To String//
	
	@Override
	public String toString() {
		return "DetalleFactura [id_detallefactura=" + id_detallefactura + ", nombre=" + nombre + ", precio=" + precio
				+ ", cantidad=" + cantidad + ", factura=" + factura + "]";
	}
	
	public double calcularTotal() { 
    	return precio * cantidad;
    	}
}