package DataliHouse.Service.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dao.CategoriesDao;
import DataliHouse.Dao.ProductsDao;
import DataliHouse.Dto.ProductsDto;
import DataliHouse.Entity.Categories;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private CategoriesDao categoriesDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Categories> GetDataCategories() {
		return categoriesDao.GetDataCategory();
	}
	
	public List<ProductsDto> GetDataProductsDtos() {
		return productsDao.GetDataProduct();
	}
}
