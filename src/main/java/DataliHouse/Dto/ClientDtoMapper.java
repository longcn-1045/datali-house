package DataliHouse.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ClientDtoMapper implements RowMapper<ClientDto> {
	public ClientDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ClientDto user = new ClientDto();
		user.setId(rs.getInt("id"));
		user.setName(rs.getString("name"));
		user.setAddress(rs.getString("address"));
		user.setPhone(rs.getString("phone"));
		user.setEmail(rs.getString("email"));
		user.setGender(rs.getInt("gender"));
		return user;
	}
}
