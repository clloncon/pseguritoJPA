package cl.awake.segurito.services;

import java.util.List;

import cl.awake.segurito.model.Factura;

public interface FacturaService {
	 Factura getById(int id);
     List<Factura> getAll();
     void add(Factura f);
     void edit(Factura f);
     void delete(Factura f);
     void delete(int id);
	
}
