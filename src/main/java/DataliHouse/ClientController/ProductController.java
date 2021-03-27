package DataliHouse.ClientController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DataliHouse.Dto.ProductsDto;
import DataliHouse.Service.Client.ProductServiceImpl;

@Controller
public class ProductController extends BaseController {

	@Autowired
	private ProductServiceImpl productService;

	@RequestMapping(value = { "/product/{id}" })
	public ModelAndView Index(@PathVariable int id) {
		ProductsDto product = productService.GetProductById(id);

		_mv.setViewName("client/products/product");

		_mv.addObject("categories", homeService.GetDataCategories());
		_mv.addObject("product", product);
		_mv.addObject("related_products", productService.GetDataProductsByCateSlug(product.getCategorySlug()));
		return _mv;
	}
}
