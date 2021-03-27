package DataliHouse.Service.Client;

import org.springframework.stereotype.Service;

import DataliHouse.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto getInfoPaginates(int totalData, int limit, int currentPage);
}
