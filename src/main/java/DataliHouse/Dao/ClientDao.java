package DataliHouse.Dao;

import org.springframework.stereotype.Repository;

import DataliHouse.Dto.ClientDto;
import DataliHouse.Dto.ClientDtoMapper;

@Repository
public class ClientDao extends BaseDao {
	private StringBuffer SqlString(int id) {
		StringBuffer sqlBuilder = new StringBuffer();
		sqlBuilder.append("SELECT id, name, address, email, phone, gender ");
		sqlBuilder.append("FROM users ");
		sqlBuilder.append("WHERE users.id = " + id + " ");
		return sqlBuilder;
	}

	public ClientDto GetUser(int id) {
		String sql = SqlString(id).toString();
		ClientDto user = _jdbcTemplate.queryForObject(sql, new ClientDtoMapper());
		return user;
	}
}
