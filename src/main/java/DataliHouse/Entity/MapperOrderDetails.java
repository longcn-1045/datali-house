package DataliHouse.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperOrderDetails implements RowMapper<OrderDetails>{

	public OrderDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		OrderDetails orderDetails = new OrderDetails();
		orderDetails.setId(rs.getInt("id"));
		orderDetails.setOrderId(rs.getInt("user_id"));
		orderDetails.setProductId(rs.getInt("product_id"));
		orderDetails.setQuantity(rs.getInt("quantity"));
		return orderDetails;
	}
}