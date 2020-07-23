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

import cl.awake.segurito.model.ActividadesMejora;
import cl.awake.segurito.model.Cliente;
import cl.awake.segurito.model.Profesional;
import cl.awake.segurito.services.ActividadesMejoraService;
import cl.awake.segurito.services.ClienteService;
import cl.awake.segurito.services.ProfesionalService;

@Controller
public class ActividadesMejoraController {
	
	@Autowired
	ProfesionalService ps;
	
	@Autowired
    ClienteService cs;
	
	@Autowired
	ActividadesMejoraService acs;
	
	
	@RequestMapping("/listarActividadesMejora")
	public ModelAndView listarActividadesMejora() {
		List<ActividadesMejora> lista = acs.getAll();
		return new ModelAndView("listarActividadesMejora","lista",lista);
	}
	
	@RequestMapping("/mostrarActividadesMejora/{id}")
	public ModelAndView mostrarActividadesMejora(@PathVariable int id) {
		ActividadesMejora ac = acs.getById(id);
		return new ModelAndView("muestraActividadesMejora","ac",ac);
	}
	
	@RequestMapping("/editarActividadesMejora/{id}")
	public ModelAndView editarActividadesMejora(@PathVariable int id) {
		ActividadesMejora ac = acs.getById(id);
		List<Profesional> listap = ps.getAll();
    	List<Cliente> listac = cs.getAll();
    	Map<String, Object> model = new HashMap<String, Object>();
        model.put("ac", ac);
        model.put("listap", listap);
        model.put("listac", listac);
        return new ModelAndView("editarActividadesMejora","model", model);
	}
	 
	@RequestMapping(value ="/guardarEditActividadesMejora", method = RequestMethod.POST)
	public ModelAndView guardarEditActividadesMejora(ActividadesMejora ac) {
		acs.edit(ac);
		return new ModelAndView("redirect:/listarActividadesMejora");
	}
	
	@RequestMapping("/eliminarActividadesMejora{id}")
	public ModelAndView eliminarActividadesMejora(@PathVariable int id) {
		acs.delete(id);
		return new ModelAndView("redirect:/listarActividadesMejora");
	}
	
	@RequestMapping("/crearActividadesMejora")
	public ModelAndView crearActividadesMejora() {
		ActividadesMejora ac = new ActividadesMejora();
		List<Profesional> listap = ps.getAll();
    	List<Cliente> listac = cs.getAll();
    	
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("ac", ac);
        model.put("listap", listap);
        model.put("listac", listac);
        
        return new ModelAndView("crearActividadesMejora", "model", model);
	}
	
	@RequestMapping(value="/guardarActividadesMejora", method = RequestMethod.POST)
	public ModelAndView guardarActividadesMejora(ActividadesMejora ac) {
		acs.add(ac);
		return new ModelAndView("redirect:/listarActividadesMejora");
	}
	
}
