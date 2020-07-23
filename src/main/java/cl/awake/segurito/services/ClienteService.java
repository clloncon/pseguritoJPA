package cl.awake.segurito.services;


import java.util.List;

import cl.awake.segurito.model.Cliente;


public interface ClienteService {
        
        Cliente getById(int id);
        List<Cliente> getAll();
        void add(Cliente c);
        void edit(Cliente c);
        void delete(Cliente c);
        void delete(int id);
        
}