package DataliHouse.ClientController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import DataliHouse.Dto.PaginatesDto;
import DataliHouse.Service.Client.CategoriesServiceImpl;
import DataliHouse.Service.Client.PaginatesServiceImpl;

@Controller
public class CategoryController extends BaseController{
	
	@Autowired
	private CategoriesServiceImpl categoriesService;
	
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	int totalProductsPerPage = 9;
	
	@RequestMapping(value = {"/{slug}"})
	public ModelAndView Index(@PathVariable String slug, @RequestParam(required = false, defaultValue = "1") String page) {
		_mv.setViewName("client/products/products");
		int totalData = categoriesService.GetDataProductsByCateSlug(slug).size();
		PaginatesDto paginateInfo = paginatesService.getInfoPaginates(totalData, totalProductsPerPage, Integer.parseInt(page));

		_mv.addObject("categories", homeService.GetDataCategories());
		_mv.addObject("category_slug", slug);
		_mv.addObject("paginate_info", paginateInfo);
		_mv.addObject("products_paginate", categoriesService.GetDataProductsPaginate(slug, paginateInfo.getStart(), totalProductsPerPage));
		
		return _mv;
	}
}
