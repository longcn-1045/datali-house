package DataliHouse.ClientController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DataliHouse.Dao.CategoriesDao;
import DataliHouse.Service.Client.HomeServiceImpl;

@Controller
public class HomeController extends BaseController {
	@RequestMapping(value = {"/", "/client"})
	public ModelAndView Index() {
		_mv.setViewName("client/index");
		_mv.addObject("categories", homeService.GetDataCategories());
		_mv.addObject("products", homeService.GetDataProductsDtos());
		return _mv;
	}
}
