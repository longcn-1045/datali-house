package DataliHouse.ClientController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value = {"/", "/client"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/index");
		return mv;
	}
}
