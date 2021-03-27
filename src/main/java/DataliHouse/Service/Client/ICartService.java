package DataliHouse.Service.Client;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import DataliHouse.Dto.CartDto;

@Service
public interface ICartService {
	public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart);
	public HashMap<Integer, CartDto> UpdateCart(int id, int quantity, HashMap<Integer, CartDto> cart);
	public HashMap<Integer, CartDto> DestroyCart(int id, HashMap<Integer, CartDto> cart);
	public int TotalQuantity(HashMap<Integer, CartDto> cart);
	public double TotalPrice(HashMap<Integer, CartDto> cart);
}
