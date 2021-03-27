package DataliHouse.Service.Client;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dao.CartDao;
import DataliHouse.Dto.CartDto;

@Service
public class CartServiceImpl implements ICartService {
	@Autowired
	private CartDao cartDao = new CartDao();

	public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart) {
		return cartDao.AddCart(id, cart);
	}

	public HashMap<Integer, CartDto> UpdateCart(int id, int quantity, HashMap<Integer, CartDto> cart) {
		return cartDao.UpdateCart(id, quantity, cart);
	}

	public HashMap<Integer, CartDto> DestroyCart(int id, HashMap<Integer, CartDto> cart) {
		return cartDao.DestroyCart(id, cart);
	}

	public int TotalQuantity(HashMap<Integer, CartDto> cart) {
		return cartDao.TotalQuantity(cart);
	}

	public double TotalPrice(HashMap<Integer, CartDto> cart) {
		return cartDao.TotalPrice(cart);
	}
}
