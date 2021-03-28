package DataliHouse.Service.Client;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dao.OrderDao;
import DataliHouse.Dto.CartDto;
import DataliHouse.Entity.OrderDetails;

@Service
public class OrdersServiceImpl implements IOrdersService {

	@Autowired
	OrderDao orderDao = new OrderDao();
	
	public int AddOrders(int user_id, int total_price) {
		return orderDao.AddOrder(user_id, total_price);
	}

	public void AddOrderDetails(HashMap<Integer, CartDto> carts) {
		int order_id = orderDao.GetIdLastOrder();
		
		for(Map.Entry<Integer, CartDto> itemCart: carts.entrySet()) {
			OrderDetails orderDetails = new OrderDetails();
			orderDetails.setOrderId(order_id);
			orderDetails.setProductId(itemCart.getValue().getProduct().getId());
			orderDetails.setQuantity(itemCart.getValue().getQuantity());
			orderDao.AddOrderDetail(orderDetails);
		}
	}

}
