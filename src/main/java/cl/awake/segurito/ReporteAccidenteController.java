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
import cl.awake.segurito.model.Profesional;
import cl.awake.segurito.model.ReporteAccidente;
import cl.awake.segurito.services.ClienteService;
import cl.awake.segurito.services.ProfesionalService;
import cl.awake.segurito.services.ReporteAccidenteService;

@Controller
public class ReporteAccidenteController {
        
        @Autowired
        ClienteService cs;
        
        @Autowired
        ReporteAccidenteService reps;
        
        
        @RequestMapping("/listarReporteAccidente")
        public ModelAndView listarReporteAccidente() {
                List<ReporteAccidente> lista = reps.getAll();
                return new ModelAndView("listarReporteAccidente","lista", lista); 
                
        }
        @RequestMapping("/mostrarReporteAccidente/{id}")
        public ModelAndView mostrarReporteAccidente(@PathVariable int id) {
            ReporteAccidente rep = reps.getById(id);
                return new ModelAndView("muestraReporteAccidente","rep", rep);
                
        }
        
        @RequestMapping("/editarReporteAccidente/{id}")
        public ModelAndView editarReporteAccidente(@PathVariable int id) {
            ReporteAccidente rep = reps.getById(id);
            List<Cliente> listac = cs.getAll();
            Map<String, Object> model = new HashMap<String, Object>();
            model.put("rep", rep);
            model.put("listac", listac);
            return new ModelAndView("editaReporteAccidente","model", model); 
        }
        
        @RequestMapping(value="/guardarEditReporteAccidente", method = RequestMethod.POST)
            public ModelAndView guardarEditReporteAccidente(ReporteAccidente rep) {
                    reps.edit(rep);
                    return new ModelAndView("redirect:/listarReporteAccidente");
            }
        
        @RequestMapping("/eliminarReporteAccidente/{id}")
        public ModelAndView eliminarReporteAccidente(@PathVariable int id) {
            reps.delete(id);
            return new ModelAndView("redirect:/listarReporteAccidente");
        }
        
        @RequestMapping("/crearReporteAccidente")
        public ModelAndView crearReporteAccidente() {

            ReporteAccidente rep = new ReporteAccidente();
            List<Cliente> listac = cs.getAll();
            
            Map<String, Object> model = new HashMap<String, Object>();
            model.put("rep", rep);
            model.put("listac", listac);
            
            return new ModelAndView("creaReporteAccidente","model", model); 
            
        }
        
        @RequestMapping(value="/guardarReporteAccidente", method = RequestMethod.POST)
            public ModelAndView guardarReporteAccidente(ReporteAccidente rep) {
                    reps.add(rep);
                    return new ModelAndView("redirect:/listarReporteAccidente");
            }
    }
