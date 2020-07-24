package cl.awake.segurito.services;

import java.util.List;

//import javax.persistence.Query;
//
//import org.hibernate.Session;

//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;

import cl.awake.segurito.model.DetalleFactura;
import cl.awake.segurito.model.DetalleFacturaRepository;
//import cl.awake.segurito.model.DetalleFacturaRepositoryJPQL;

@Service
public class DetalleFacturaServiceImpl implements DetalleFacturaService {
	 @Autowired
     DetalleFacturaRepository dfr;
	 
//	 @Autowired
//     DetalleFacturaRepositoryJPQL dfrJPQL;
	 
//	 @Autowired
//	EntityManagerFactory emf;
//	 @Override
//		public List<DetalleFactura> getDetalleFacturaByIdFactura(int id) {
//		      EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "emf" );
//		      EntityManager entitymanager = emfactory.createEntityManager();
//		      
//		      //Scalar function
//		      Query query = entitymanager.createQuery("Select * from detallefactura where id_factura=?");
//		      query.setParameter("?", id);
//		      @SuppressWarnings("unchecked")
//			List<DetalleFactura> list=query.getResultList();
//		 return list;
//		}
	 
	@Override
	public DetalleFactura getById(int id) {
		// TODO Auto-generated method stub
		return dfr.findOne(id);
	}

	@Override
	public List<DetalleFactura> getAll() {
		// TODO Auto-generated method stub
		return (List<DetalleFactura>) dfr.findAll();
	}

	@Override
	public void add(DetalleFactura df) {
		// TODO Auto-generated method stub
		dfr.save(df);
	}

	@Override
	public void edit(DetalleFactura df) {
		// TODO Auto-generated method stub
		dfr.save(df);
	}

	@Override
	public void delete(DetalleFactura df) {
		// TODO Auto-generated method stub
		dfr.delete(df);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		dfr.delete(id);
	}

//	@Override
//	public List<DetalleFactura> findAllById(int id_factura) {
//		// TODO Auto-generated method stub
//		return dfrJPQL.findAllById(id_factura);
//	}
	
	

}
