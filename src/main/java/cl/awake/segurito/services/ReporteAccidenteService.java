package cl.awake.segurito.services;

import java.util.List;

import cl.awake.segurito.model.ReporteAccidente;

public interface ReporteAccidenteService {

    ReporteAccidente getById(int id);
    List <ReporteAccidente>getAll();
    void add(ReporteAccidente rep);
    void edit(ReporteAccidente rep);
    void delete(ReporteAccidente rep);
    void delete(int id);
    
    
}
