package DataliHouse.ClientController;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import DataliHouse.Service.Client.HomeServiceImpl;

@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl homeService;

	ModelAndView _mv = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init() {
		return _mv;
	}
}
