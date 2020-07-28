package cl.awake.segurito;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awake.segurito.model.Profesional;
import cl.awake.segurito.services.ProfesionalService;



@Controller
public class ProfesionalController {

        @Autowired
        ProfesionalService ps;
        
        @RequestMapping("/listarProfesional")
        public ModelAndView listarProfesional() {
                List<Profesional> lista = ps.getAll();
                
                return new ModelAndView("listarProfesional","lista", lista); 
                
        }
        @RequestMapping("/mostrarProfesional/{id}")
        public ModelAndView mostrarProfesional(@PathVariable int id) {
                Profesional p = ps.getById(id);
                return new ModelAndView("muestraProfesional","p", p);
                
        }
        
        @RequestMapping("/editarProfesional/{id}")
        public ModelAndView editarProfesional(@PathVariable int id) {
        	 Profesional p = ps.getById(id);
             return new ModelAndView("editaProfesional","p", p);
        }
        
        @RequestMapping(value="/guardarEditProfesional", method = RequestMethod.POST)
    	public ModelAndView guardarEditProfesional(Profesional p) {
    		ps.edit(p);
    		return new ModelAndView("redirect:/listarProfesional");
    	}
        
        @RequestMapping("/eliminarProfesional/{id}")
        public ModelAndView eliminarProfesional(@PathVariable int id) {
        	ps.delete(id);
        	return new ModelAndView("redirect:/listarProfesional");
        }
        
        @RequestMapping("/crearProfesional")
        public ModelAndView crearProfesional() {
        	 Profesional p = new Profesional();
        	 return new ModelAndView("creaProfesional","p", p);
        }
        
        @RequestMapping(value="/guardarProfesional", method = RequestMethod.POST)
    	public ModelAndView guardarProfesional(Profesional p) {
    		ps.add(p);
    		return new ModelAndView("redirect:/listarProfesional");
    	}
}



