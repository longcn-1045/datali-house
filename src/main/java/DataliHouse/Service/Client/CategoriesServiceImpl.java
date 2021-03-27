package DataliHouse.Service.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dao.ProductsDao;
import DataliHouse.Dto.ProductsDto;

@Service
public class CategoriesServiceImpl implements ICategoriesService {
	
	@Autowired
	private ProductsDao productsDao;
	
	public List<ProductsDto> GetDataProductsPaginate(String slug, int start, int totalProductsPerPage) {
		return productsDao.GetDataProductPaginates(slug, start, totalProductsPerPage);
	}
	
	public List<ProductsDto> GetDataProductsByCateSlug(String slug) {
		return productsDao.GetDataProductByCateSlug(slug);
	}
}
