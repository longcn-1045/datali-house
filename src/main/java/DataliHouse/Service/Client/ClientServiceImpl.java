package DataliHouse.Service.Client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DataliHouse.Dao.ClientDao;
import DataliHouse.Dto.ClientDto;

@Service
public class ClientServiceImpl implements IClientService{
	@Autowired
	private ClientDao clientDao = new ClientDao();
	
	public ClientDto GetUser(int id) {
		return clientDao.GetUser(id);
	}

}
