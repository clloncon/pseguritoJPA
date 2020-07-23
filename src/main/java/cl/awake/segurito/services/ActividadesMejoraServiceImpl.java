package cl.awake.segurito.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awake.segurito.model.ActividadesMejora;
import cl.awake.segurito.model.ActividadesMejoraRepository;

@Service
public class ActividadesMejoraServiceImpl implements ActividadesMejoraService {

	@Autowired
    ActividadesMejoraRepository acr;
	
	@Override
	public ActividadesMejora getById(int id) {
		// TODO Auto-generated method stub
		return acr.findOne(id);
	}

	@Override
	public List<ActividadesMejora> getAll() {
		// TODO Auto-generated method stub
		return (List<ActividadesMejora>) acr.findAll();
	}

	@Override
	public void add(ActividadesMejora ac) {
		// TODO Auto-generated method stub
		acr.save(ac);
	}

	@Override
	public void edit(ActividadesMejora ac) {
		// TODO Auto-generated method stub
		acr.save(ac);
	}

	@Override
	public void delete(ActividadesMejora ac) {
		// TODO Auto-generated method stub
		acr.delete(ac);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		acr.delete(id);
	}

}
