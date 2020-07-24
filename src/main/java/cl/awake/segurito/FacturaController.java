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

import cl.awake.segurito.model.Cliente;
import cl.awake.segurito.model.Factura;
import cl.awake.segurito.services.ClienteService;
import cl.awake.segurito.services.FacturaService;

@Controller
public class FacturaController {
	
	@Autowired
    ClienteService cs;
	
	@Autowired
    FacturaService fs;
    
    @RequestMapping("/listarFactura")
    public ModelAndView listarFactura() {
            List<Factura> lista = fs.getAll();
            return new ModelAndView("listarFactura","lista", lista); 
            
    }
    @RequestMapping("/mostrarFactura/{id}")
    public ModelAndView mostrarFactura(@PathVariable int id) {
    		Factura f = fs.getById(id);
            return new ModelAndView("muestraFactura","f", f);
            
    }
    
    @RequestMapping("/editarFactura/{id}")
    public ModelAndView editarFactura(@PathVariable int id) {
    	Factura f = fs.getById(id);
    	List<Cliente> listac = cs.getAll();
    	Map<String, Object> model = new HashMap<String, Object>();
        model.put("f", f);
        model.put("listac", listac);
        return new ModelAndView("editaFactura","model", model); 
    }
    
    @RequestMapping(value="/guardarEditFactura", method = RequestMethod.POST)
	public ModelAndView guardarEditFactura(Factura f) {
		fs.edit(f);
		return new ModelAndView("redirect:/listarFactura");
	}
    
    @RequestMapping("/eliminarFactura/{id}")
    public ModelAndView eliminarFactura(@PathVariable int id) {
    	fs.delete(id);
    	return new ModelAndView("redirect:/listarFactura");
    }
    
    @RequestMapping("/crearFactura")
    public ModelAndView crearFactura() {

    	Factura f = new Factura();
    	List<Cliente> listac = cs.getAll();
    	
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("f", f);
        model.put("listac", listac);    
        return new ModelAndView("creaFactura","model", model); 
        
    }
    
    @RequestMapping(value="/guardarFactura", method = RequestMethod.POST)
	public ModelAndView guardarFactura(Factura f) {
		fs.add(f);
//        f.setIva(f.calcularIVA());
//        f.setSubtotal((int)f.calcularSubtotal());
//        f.setTotal((int)f.calcularTotal());
//        fs.edit(f);	
		return new ModelAndView("redirect:/listarFactura");
	}
}

