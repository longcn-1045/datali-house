package DataliHouse.ClientController;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DataliHouse.Dto.CartDto;
import DataliHouse.Dto.ClientDto;
import DataliHouse.Entity.Orders;
import DataliHouse.Service.Client.CartServiceImpl;
import DataliHouse.Service.Client.ClientServiceImpl;
import DataliHouse.Service.Client.OrdersServiceImpl;

@Controller
public class CheckoutController extends BaseController {

	@Autowired
	private ClientServiceImpl clientServiceImpl = new ClientServiceImpl();

	@Autowired
	private OrdersServiceImpl ordersServiceImpl = new OrdersServiceImpl();

	@RequestMapping(value = { "/checkout" }, method = RequestMethod.GET)
	public ModelAndView Index(HttpSession session) {
		ClientDto user = clientServiceImpl.GetUser(1);
		session.setAttribute("LoginInfo", user);
		_mv.setViewName("client/bills/checkout");
		return _mv;
	}

	@RequestMapping(value = { "/checkout" }, method = RequestMethod.POST)
	public String CheckoutOrder(HttpServletRequest request, HttpSession session) {
		try {
			ClientDto user = (ClientDto) session.getAttribute("LoginInfo");
			double total_price = (Double) session.getAttribute("TotalPriceCart");
			HashMap<Integer, CartDto> carts = (HashMap<Integer, CartDto>) session.getAttribute("Cart");

			if (!carts.isEmpty()) {
				int insert = ordersServiceImpl.AddOrders(user.getId(), (int) total_price);

				if (insert > 0) {
					ordersServiceImpl.AddOrderDetails(carts);
				}

				session.removeAttribute("Cart");
			}
			return "redirect:cart";
		} catch (Exception e) {
			return "redirect:cart";
		}
	}
}
