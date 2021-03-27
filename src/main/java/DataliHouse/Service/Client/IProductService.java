package DataliHouse.Service.Client;

import java.util.List;

import org.springframework.stereotype.Service;

import DataliHouse.Dto.PaginatesDto;
import DataliHouse.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductById(int id);
	
	public List<ProductsDto> GetDataProductsByCateSlug(String slug);
}
