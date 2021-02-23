package DataliHouse.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategories implements RowMapper<Categories>{

	public Categories mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categories categories = new Categories();
		categories.setId(rs.getInt("id"));
		categories.setNameString(rs.getString("name"));
		categories.setSlugString(rs.getString("slug"));
		categories.setIconString(rs.getString("icon"));
		return categories;
	}
}
