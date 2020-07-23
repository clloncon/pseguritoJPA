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

import cl.awake.segurito.model.Asesoria;
import cl.awake.segurito.services.AsesoriaService;

@Controller
public class AsesoriaController {
	@Autowired
    AsesoriaService ass;
    
    @RequestMapping("/listarAsesoria")
    public ModelAndView listarAsesoria() {
            List<Asesoria> lista = ass.getAll();
            
            return new ModelAndView("listarAsesoria","lista", lista); 
            
    }
    @RequestMapping("/mostrarAsesoria/{id}")
    public ModelAndView mostrarAsesoria(@PathVariable int id) {
    		Asesoria as = ass.getById(id);
            return new ModelAndView("muestraAsesoria","as", as);
            
    }
    
    @RequestMapping("/editarAsesoria/{id}")
    public ModelAndView editarAsesoria(@PathVariable int id) {
    	Asesoria as = ass.getById(id);
         return new ModelAndView("editaAsesoria","as", as);
    }
    
    @RequestMapping(value="/guardarEditAsesoria", method = RequestMethod.POST)
	public ModelAndView guardarEditAsesoria(Asesoria as) {
		ass.edit(as);
		return new ModelAndView("redirect:/listarAsesoria");
	}
    
    @RequestMapping("/eliminarAsesoria/{id}")
    public ModelAndView eliminarAsesoria(@PathVariable int id) {
    	ass.delete(id);
    	return new ModelAndView("redirect:/listarAsesoria");
    }
    
    @RequestMapping("/crearAsesoria")
    public ModelAndView crearAsesoria() {
    	Asesoria as = new Asesoria();   	
    	 return new ModelAndView("creaAsesoria","as", as);
    }
    
    @RequestMapping(value="/guardarAsesoria", method = RequestMethod.POST)
	public ModelAndView guardarAsesoria(Asesoria as) {
		ass.add(as);
		return new ModelAndView("redirect:/listarAsesoria");
	}
}
