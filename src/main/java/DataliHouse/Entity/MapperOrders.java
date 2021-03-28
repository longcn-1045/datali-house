package DataliHouse.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperOrders implements RowMapper<Orders>{

	public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
		Orders orders = new Orders();
		orders.setId(rs.getInt("id"));
		orders.setUserId(rs.getInt("user_id"));
		orders.setTotalPrice(rs.getInt("total_price"));
		orders.setStatus(rs.getInt("status"));
		return orders;
	}
}