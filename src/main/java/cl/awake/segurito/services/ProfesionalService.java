package cl.awake.segurito.services;


import java.util.List;

import cl.awake.segurito.model.Profesional;


public interface ProfesionalService {
        
        Profesional getById(int id);
        List<Profesional> getAll();
        void add(Profesional p);
        void edit(Profesional p);
        void delete(Profesional p);
        void delete(int id);
        
}
