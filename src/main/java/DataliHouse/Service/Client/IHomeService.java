package DataliHouse.Service.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dto.ProductsDto;
import DataliHouse.Entity.Categories;
@Service
public interface IHomeService {
	@Autowired
	public List<Categories> GetDataCategories();
	public List<ProductsDto> GetDataProductsDtos();
}
