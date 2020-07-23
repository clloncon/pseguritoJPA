package cl.awake.segurito.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awake.segurito.model.Cliente;
import cl.awake.segurito.model.ClienteRepository;



@Service
public class ClienteServiceImpl implements ClienteService {

        @Autowired
        ClienteRepository cr;
        
        @Override
        public Cliente getById(int id) {
                // TODO Auto-generated method stub
                return cr.findOne(id);
        }

        @Override 
        public List<Cliente> getAll() {
                // TODO Auto-generated method stub
                return (List<Cliente>) cr.findAll();
        }

        @Override
        public void add(Cliente p) {
                // TODO Auto-generated method stub
                cr.save(p);

        }

        @Override
        public void edit(Cliente p) {
                // TODO Auto-generated method stub
                cr.save(p);

        }

        @Override
        public void delete(Cliente p) {
                // TODO Auto-generated method stub
                cr.delete(p);

        }

        @Override
        public void delete(int id) {
                // TODO Auto-generated method stub
                cr.delete(id);

        }

}