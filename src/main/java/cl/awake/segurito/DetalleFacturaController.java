package cl.awake.segurito;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awake.segurito.model.DetalleFactura;
import cl.awake.segurito.model.Factura;
import cl.awake.segurito.services.DetalleFacturaService;
import cl.awake.segurito.services.FacturaService;

@Controller
public class DetalleFacturaController {
	
	@Autowired
    FacturaService fs;
	
	@Autowired
    DetalleFacturaService dfs;
    
    @RequestMapping("/listarDetalleFactura")
    public ModelAndView listarDetalleFactura() {
             List<DetalleFactura> lista = dfs.getAll();
            return new ModelAndView("listarDetalleFactura","lista", lista); 
            
    }
//    @RequestMapping("/mostrarDetalleFactura/{id_factura}")
//    public ModelAndView mostrarDetalleFactura(@PathVariable int id_factura) {
//		List<DetalleFactura> df = dfs.findAllById(id_factura);
//        return new ModelAndView("muestraDetalleFactura","df", df);          
//    }
    
    @RequestMapping("/editarDetalleFactura/{id}")
    public ModelAndView editarDetalleFactura(@PathVariable int id) {
    	DetalleFactura df = dfs.getById(id);
    	List<Factura> listaf = fs.getAll();
    	Map<String, Object> model = new HashMap<String, Object>();
        model.put("df", df);
        model.put("listaf", listaf);
        return new ModelAndView("editaDetalleFactura","model", model); 
    }
    
    @RequestMapping(value="/guardarEditDetalleFactura", method = RequestMethod.POST)
	public ModelAndView guardarEditDetalleFactura(DetalleFactura df) {
		dfs.edit(df);
		return new ModelAndView("redirect:/listarDetalleFactura");
	}
    
    @RequestMapping("/eliminarDetalleFactura/{id}")
    public ModelAndView eliminarDetalleFactura(@PathVariable int id) {
    	dfs.delete(id);
    	return new ModelAndView("redirect:/listarDetalleFactura");
    }
    
    @RequestMapping("/crearDetalleFactura")
    public ModelAndView crearDetalleFactura() {

    	DetalleFactura df = new DetalleFactura();
    	List<Factura> listaf = fs.getAll();
    	
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("df", df);
        model.put("listaf", listaf);
        
        return new ModelAndView("creaDetalleFactura","model", model); 
        
    }
    
    @RequestMapping(value="/guardarDetalleFactura", method = RequestMethod.POST)
	public ModelAndView guardarDetalleFactura(DetalleFactura df) {
		dfs.add(df);
		return new ModelAndView("redirect:/listarDetalleFactura");
	}
}