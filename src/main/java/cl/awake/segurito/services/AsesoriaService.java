package cl.awake.segurito.services;

import java.util.List;

import cl.awake.segurito.model.Asesoria;

public interface AsesoriaService {
	
	 Asesoria getById(int id);
     List<Asesoria> getAll();
     void add(Asesoria as);
     void edit(Asesoria as);
     void delete(Asesoria as);
     void delete(int id);
	
}
