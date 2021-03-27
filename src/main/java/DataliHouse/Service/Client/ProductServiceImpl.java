package DataliHouse.Service.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dao.ProductsDao;
import DataliHouse.Dto.ProductsDto;

@Service
public class ProductServiceImpl implements IProductService{
	@Autowired
	ProductsDao productsDao = new ProductsDao();
	
	public ProductsDto GetProductById(int id) {
		List<ProductsDto> list = productsDao.GetProductsById(id);
		return list.get(0);
	}
	
	public List<ProductsDto> GetDataProductsByCateSlug(String slug) {
		return productsDao.GetDataProductByCateSlug(slug);
	}
}
