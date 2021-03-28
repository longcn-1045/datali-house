package DataliHouse.Service.Client;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import DataliHouse.Dto.CartDto;

@Service
public interface IOrdersService {
	public int AddOrders(int user_id, int total_price);

	public void AddOrderDetails(HashMap<Integer, CartDto> carts);
}
