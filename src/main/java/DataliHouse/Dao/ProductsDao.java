package DataliHouse.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import DataliHouse.Dto.ProductsDto;
import DataliHouse.Dto.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao {
	private StringBuffer SqlString() {
		StringBuffer sqlBuilder = new StringBuffer();
		sqlBuilder.append(
				"SELECT products.id as product_id, products.name as product_name, product_details.unit_price as product_price, product_details.image as product_img, products.created_at as product_created_at, products.updated_at as product_updated_at ");
		sqlBuilder.append("FROM products ");
		sqlBuilder.append("JOIN product_details ");
		sqlBuilder.append("ON product_details.product_id = products.id ");
		return sqlBuilder;
	}

	private String SqlProducts(boolean isNewest) {
		StringBuffer sql = SqlString();
		sql.append("ORDER BY created_at DESC ");
		return sql.toString();
	}

	private StringBuffer SqlProductsByCateSlug(String slug) {
		StringBuffer sql = SqlString();
		sql.append("JOIN product_categories ");
		sql.append("ON product_categories.product_id = products.id ");
		sql.append("JOIN categories ");
		sql.append("ON categories.id = product_categories.category_id ");
		sql.append("WHERE categories.slug = '" + slug + "' ");
		return sql;
	}
	
	private String SqlProductsPaginates(String slug, int start, int totalProductsPerPage) {
		StringBuffer sql = SqlProductsByCateSlug(slug);
		sql.append("LIMIT " + (start - 1) + ", " + totalProductsPerPage + " ");
		return sql.toString();
	}
	
	private String SqlProductById(int id) {
		StringBuffer sql = new StringBuffer();
		sql.append(
				"SELECT products.id as product_id, categories.slug as category_slug, products.name as product_name, product_details.unit_price as product_price, product_details.image as product_img, products.created_at as product_created_at, products.updated_at as product_updated_at ");
		sql.append("FROM products ");
		sql.append("JOIN product_details ");
		sql.append("ON product_details.product_id = products.id ");
		sql.append("JOIN product_categories ");
		sql.append("ON product_categories.product_id = products.id ");
		sql.append("JOIN categories ");
		sql.append("ON categories.id = product_categories.category_id ");
		sql.append("WHERE 1  = 1 ");
		sql.append("AND products.id = " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}

	public List<ProductsDto> GetDataProduct() {
		String sql = SqlProducts(true);
		List<ProductsDto> listProductsDtos = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProductsDtos;
	}
	
	public List<ProductsDto> GetDataProductByCateSlug(String slug) {
		String sql = SqlProductsByCateSlug(slug).toString();
		List<ProductsDto> listProductsDtos = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProductsDtos;
	}
	
	public List<ProductsDto> GetDataProductPaginates(String slug, int start, int totalProductsPerPage) {
		String sql = SqlProductsPaginates(slug, start, totalProductsPerPage);
		List<ProductsDto> listProductsDtos = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProductsDtos;
	}

	public List<ProductsDto> GetProductsById(int id) {
		String sql = SqlProductById(id);
		List<ProductsDto> listProductsDtos = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProductsDtos;
	}	

	public ProductsDto FindProductsById(int id) {
		String sql = SqlProductById(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}
}
