package DataliHouse.ClientController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DataliHouse.Dao.CategoriesDao;
import DataliHouse.Service.Client.HomeServiceImpl;

@Controller
public class HomeController {
	@Autowired
	HomeServiceImpl homeService;
	
	@RequestMapping(value = {"/", "/client"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/index");
		mv.addObject("categories", homeService.GetDataCategories());
		return mv;
	}
	
	@RequestMapping(value = {"/products"})
	public ModelAndView Products() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/products");
		return mv;
	}
}
