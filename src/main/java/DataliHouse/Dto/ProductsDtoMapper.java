package DataliHouse.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDtoMapper implements RowMapper<ProductsDto> {
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto products = new ProductsDto();
		products.setId(rs.getInt("product_id"));
		products.setNameString(rs.getString("product_name"));
		products.setPrice(rs.getInt("product_price"));
		try {
			products.setCategorySlug(rs.getString("category_slug"));
		} catch (Exception e) {
		}
		products.setImgString(rs.getString("product_img"));
		products.setCreatedAtDate(rs.getDate("product_created_at"));
		products.setUpdatedAtDate(rs.getDate("product_updated_at"));
		return products;
	}
}
