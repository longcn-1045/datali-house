package DataliHouse.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DataliHouse.Entity.Categories;
import DataliHouse.Entity.MapperCategories;
import DataliHouse.Entity.OrderDetails;

@Repository
public class OrderDao extends BaseDao {
	public int AddOrder(int user_id, int total_price) {
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("INSERT INTO orders ");
		sqlBuffer.append("( ");
		sqlBuffer.append(" user_id, total_price, status ");
		sqlBuffer.append(") ");
		sqlBuffer.append("VALUES ");
		sqlBuffer.append("( ");
		sqlBuffer.append("         '" + user_id + "', ");
		sqlBuffer.append("         '" + total_price + "', ");
		sqlBuffer.append("         '" + 0 + "' ");
		sqlBuffer.append(");");
		
		int insert = _jdbcTemplate.update(sqlBuffer.toString());
		return insert;

	}

	public int GetIdLastOrder() {
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("SELECT MAX(id) FROM orders");
		int id = _jdbcTemplate.queryForObject(sqlBuffer.toString(), new Object[] {}, Integer.class);
		return id;
	}
	
	public int AddOrderDetail(OrderDetails orderDetails) {
		StringBuffer sqlBuffer = new StringBuffer();
		sqlBuffer.append("INSERT INTO order_detail");
		sqlBuffer.append("( ");
		sqlBuffer.append(" product_id, order_id, quantity ");
		sqlBuffer.append(") ");
		sqlBuffer.append("VALUES ");
		sqlBuffer.append("( ");
		sqlBuffer.append("         '" + orderDetails.getProductId() + "', ");
		sqlBuffer.append("         '" + orderDetails.getOrderId() + "', ");
		sqlBuffer.append("         '" + orderDetails.getQuantity() + "' ");
		sqlBuffer.append(");");
		int insert = _jdbcTemplate.update(sqlBuffer.toString());
		
		return insert;
	}
}
