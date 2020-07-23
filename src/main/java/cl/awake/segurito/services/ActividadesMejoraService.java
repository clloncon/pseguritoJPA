package cl.awake.segurito.services;

import java.util.List;

import cl.awake.segurito.model.ActividadesMejora;


public interface ActividadesMejoraService {

	ActividadesMejora getById(int id);
    List<ActividadesMejora> getAll();
    void add(ActividadesMejora ac);
    void edit(ActividadesMejora ac);
    void delete(ActividadesMejora ac);
    void delete(int id);
	
}
