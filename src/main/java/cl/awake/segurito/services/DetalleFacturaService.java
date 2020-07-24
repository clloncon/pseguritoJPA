package cl.awake.segurito.services;

import java.util.List;

import cl.awake.segurito.model.DetalleFactura;

public interface DetalleFacturaService {
	 DetalleFactura getById(int id);
     List<DetalleFactura> getAll();
     void add(DetalleFactura df);
     void edit(DetalleFactura df);
     void delete(DetalleFactura df);
     void delete(int id);
    //  List<DetalleFactura> findAllById(int id_factura);
}
