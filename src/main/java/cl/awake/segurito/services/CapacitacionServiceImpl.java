package cl.awake.segurito.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awake.segurito.model.Capacitacion;
import cl.awake.segurito.model.CapacitacionRepository;

@Service
public class CapacitacionServiceImpl implements CapacitacionService {
        
         @Autowired
     CapacitacionRepository capc;
         
        @Override
        public Capacitacion getById(int id) {
                // TODO Auto-generated method stub
                return capc.findOne(id);
        }

        @Override
        public List<Capacitacion> getAll() {
                // TODO Auto-generated method stub
                return (List<Capacitacion>) capc.findAll();
        }

        @Override
        public void add(Capacitacion cap) {
                // TODO Auto-generated method stub
                capc.save(cap);
        }

        @Override
        public void edit(Capacitacion cap) {
                // TODO Auto-generated method stub
                capc.save(cap);
        }

        @Override
        public void delete(Capacitacion cap) {
                // TODO Auto-generated method stub
                 capc.delete(cap);
        }

        @Override
        public void delete(int id) {
                // TODO Auto-generated method stub
                capc.delete(id);
        }

}
