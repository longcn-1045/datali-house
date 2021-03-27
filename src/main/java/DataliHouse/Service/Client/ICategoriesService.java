package DataliHouse.Service.Client;

import java.util.List;

import org.springframework.stereotype.Service;

import DataliHouse.Dto.ProductsDto;

@Service
public interface ICategoriesService {
	public List<ProductsDto> GetDataProductsPaginate(String slug, int start, int totalProductsPerPage);
	
	public List<ProductsDto> GetDataProductsByCateSlug(String slug);
}
