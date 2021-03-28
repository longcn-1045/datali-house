package DataliHouse.Service.Client;

import org.springframework.stereotype.Service;

import DataliHouse.Dto.ClientDto;

@Service
public interface IClientService {
	public ClientDto GetUser(int id);

}
